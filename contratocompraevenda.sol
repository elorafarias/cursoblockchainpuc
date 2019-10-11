pragma solidity 0.5.12;

contract Compraevenda {
    
    string public vendedor;
    string public comprador;
    uint256 private valor;
    uint256 private prazopagamento;
    uint256 private tabelaFIPE;
    
    constructor (
        string memory nomeVendedor,
        string memory nomeComprador,
        uint256 valorCarro,
        uint256 mesesParcela)
    
    public
    {
        vendedor = nomeVendedor;
        comprador = nomeComprador;
        valor = valorCarro;
        prazopagamento = mesesParcela;
        tabelaFIPE = tabelaFIPE;
       
        if (tabelaFIPE > valorCarro)
        {
            valorCarro = tabelaFIPE; 
        }
    
    }
    
    function vencimentoAntecipado (uint256 mesesParcela, uint256 valorCarro)  public
    {
        // inadimplemento de parcelas até o sexto mês
        
        require (mesesParcela < 6,  "se atrasar parcela em < 6 mesesParcela = vencimentoAntecipado");
        for (uint256 i=6; i<mesesParcela; i++) {
            valor = valorCarro;
        }
    }
}
