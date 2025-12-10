// Validador JavaScript de Limite de Ramais
$(document).ready(function() {
    // Só executar na página de extensões
    if (window.location.href.indexOf("display=extensions") === -1) {
        return;
    }
    
    // Função para verificar limite
    function verificarLimite() {
        $.ajax({
            url: '/admin/limite_ajax_validator.php',
            type: 'GET',
            dataType: 'json',
            success: function(data) {
                if (data.pode_criar === false && window.location.href.indexOf("action=add") > -1) {
                    // Bloquear formulário
                    $('#mainform').before(
                        '<div class="alert alert-danger" style="margin: 20px;">' +
                        '<h3>⛔ Limite Excedido</h3>' +
                        '<p>Sistema no limite máximo de <strong>' + data.limite + '</strong> ramais.</p>' +
                        '<p>Ramais em uso: <strong>' + data.atual + '</strong></p>' +
                        '<a href="/limite_ramais.php" target="_blank" class="btn btn-info">Ver Dashboard</a>' +
                        '</div>'
                    );
                    
                    // Desabilitar formulário
                    $('#mainform').hide();
                    $('#action-bar').hide();
                } else if (data.disponivel <= 5 && data.disponivel > 0) {
                    // Mostrar aviso
                    $('.container-fluid').prepend(
                        '<div class="alert alert-warning alert-dismissible" style="margin: 10px;">' +
                        '<button type="button" class="close" data-dismiss="alert">&times;</button>' +
                        '<strong>⚠️ Atenção:</strong> Apenas <strong>' + data.disponivel + 
                        '</strong> ramais disponíveis! (' + data.percentual + '% do limite usado)' +
                        '</div>'
                    );
                }
                
                // Adicionar contador no topo
                if ($('#limite-counter').length === 0) {
                    $('.page-header').after(
                        '<div id="limite-counter" class="well well-sm" style="margin: 10px; text-align: center;">' +
                        'Ramais: <strong>' + data.atual + '/' + data.limite + '</strong> ' +
                        '(Disponíveis: ' + data.disponivel + ')' +
                        '</div>'
                    );
                }
            }
        });
    }
    
    // Verificar ao carregar
    verificarLimite();
    
    // Verificar periodicamente
    setInterval(verificarLimite, 30000);
});
