pragma solidity 0.5.12;

contract Compraevenda {
    
    string public vendedor;
    string public comprador;
    uint256 private valorParcela;
    uint256 private valorPresente;
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
        valorParcela = valorCarro/mesesParcela;
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
        for (uint256 i=1; i<mesesParcela; i++) {
            valorPresente = valorPresente + valorParcela;
        }
    }
}
