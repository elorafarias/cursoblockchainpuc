pragma solidity 0.5.12;
    
contract Mutuo 
{
    
    /* O Mutuante ira emprestar 2000 ao Mutuario por 30 dias, sem juros. Se o Mutuario nao devolver em 30 dias, paga multa por dia de atraso. 
    60*60*24*30 = 
    */
    
    string public mutuante;
    string public mutuario;
    uint256 private valor;
    uint256 public MultaPorAtaso;
    uint256 public datadevencimento;
    uint256 public ValordaMulta;
    address payable public contamutuante; 
    bool public pago;
    address public contamutuario; 
        
    event pagamentoRealizado (uint valor);
        
    
    constructor (string memory NomeMutuante, string memory NomeMutuario, uint256 ValorDoEmprestimo, address payable _contamutuante, address _contamutuario) public
    {
        mutuante = NomeMutuante;
        mutuario = NomeMutuario;
        valor = ValorDoEmprestimo;
        datadevencimento = now+30 days;
        contamutuante = _contamutuante;
        contamutuario = _contamutuario;
        
    }

    /* Onde o Mutuario ira pagar */
    
    function pagamento () public payable 
    {
        require (msg.sender == contamutuario);
        if (now <= datadevencimento) {
            require (msg.value == valor);
        } else {
            require (msg.value == simulaMulta());
        }
        pago = true;
        contamutuante.transfer (msg.value);
        emit pagamentoRealizado (msg.value);
    } 
    
    /* Multa por atraso */
    
    function simulaMulta () public returns (uint256)
    {
        if (now <= datadevencimento) {
            ValordaMulta = 0;
        } else {
            ValordaMulta = (now - datadevencimento) * 100;  
        }
        
        return (ValordaMulta);
    }
    
    function agora() public view returns (uint256) {
        return now;
    }
}
    
