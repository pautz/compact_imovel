# compact_imovel
compact imovel, alugue por dia seu quarto, peça, item, ou espaço
utilize o db sql para criar o banco de dados

troque o 127.0.0.1 pelo seu endereço

# API de Pagamentos em Aura


---

Este projeto permite realizar pagamentos em **Aura** através de URLs simples que geram QR Codes e se conectam à API `aura_new_api.php`.
Primeiramente se cadastre em https://carlitoslocacoes.com/farolqr/site/register_odonto2.php

segundamente faça sua identificação em https://carlitoslocacoes.com/farolqr/site/identificacao_farolqr.php

terceiramente https://carlitoslocacoes.com/pulse/create.php digite seu username e chave_extra: xs2_portal_extra

terceiramente altere carlitopautz_farolqr pelo seu username https://carlitoslocacoes.com/pulse/carlitopautz_farolqr.php?valor=$valor&compra_id=$compra_id
altere entao $valor pelo valor total e $compra_id pelos valores de ids

## 🚀 Estrutura da URL

A URL segue o formato:

https://carlitoslocacoes.com/pulse/xs1.php?valor=$valor&compra_id=$compra_id

- Substitua **`$valor`** pelo valor da compra.  
- Substitua **`$compra_id`** pelo identificador da compra.  

Exemplo:

https://carlitoslocacoes.com/pulse/xs1.php?valor=10&compra_id=3691


---

## 🔑 Observações Importantes

- O **usuário** já está salvo dentro do arquivo `xs1.php`.  
- Para criar novos links de pagamento, utilize:
https://carlitoslocacoes.com/pulse/create.php

chave_extra:xs2_portal_extra

Esse endpoint gera o arquivo `xs1.php`.  
Na prática, cada usuário terá seu próprio arquivo `username.php` (ex.: `carlitoslocacoes.com/pulse/carlitopautz_farolqr.php`).  
Portanto, basta alterar no link `xs1` para o **username** correspondente.

https://carlitoslocacoes.com/pulse/carlitopautz_farolqr.php?valor=$valor&compra_id=$compra_id
---

## 📦 Integração no Carrinho

Adicione o seguinte bloco de código na sua página do carrinho:

```php
<?php
session_start();

// Exemplo de valores
$valorCompra = 10; // defina o valor somentew inteiro com intval $valorCompra = intval($imovel['preco']);
$compraId    = 3695; // $imovel['id'];
$usernameaura = "carlitopautz_farolqr";

// Link de pagamento Aura (ajuste xs1 para o username do usuário)
$linkAura   = "https://carlitoslocacoes.com/pulse/{$usernameaura}.php?valor={$valorCompra}&compra_id={$compraId}";
?>
<div class="option aura">
  <a href="<?= $linkAura ?>">
    ✨ Pagar com Aura - R$<?= number_format($valorCompra, 2, ',', '.') ?>
  </a>
</div>

