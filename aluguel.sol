pragma solidity 0.5.12;

contract Locacao {
    
    /*
    para textao 
    */
    // para texto menor
    //
    string public locador;
    string public locatario;    
    uint256 private valor;

    constructor (string memory nomeLocador,string memory nomeLocatario,uint256 valorDoAluguel)
                   public {
            locador = nomeLocador;
            locatario = nomeLocatario;
            valor = valorDoAluguel;
            }
            function valorDoAluguel () public view returns (uint256) { 
                return  valor;  
            }
                               function simulaMulta (uint256 mesesRestantes,
                               uint256 totalMesesContrato)
                               public
                               view
                               return (uint256 valorMulta) {
                                valorMulta = valor "numeroMaximolegaldealuguelparamulta";
                                   valorMulta = valorMulta/totalMesesContrato;
                                   valorMulta = valorMulta*mesesRestante;
                                   return valorMulta; 
                                                                  }
                                   
                                   function reajusteAlugel (uint256 percentualReajuste) public {
                                       uint256 valorDoAcrescimo = 0;
                                       }
}   
