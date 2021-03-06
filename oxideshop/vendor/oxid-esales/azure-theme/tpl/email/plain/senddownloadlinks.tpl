[{assign var="shop"      value=$oEmailView->getShop()}]
[{assign var="oViewConf" value=$oEmailView->getViewConfig()}]
[{assign var="sOrderId"   value=$order->getId()}]
[{assign var="oOrderFileList"   value=$oEmailView->getOrderFileList($sOrderId)}]


[{include file="email/html/header.tpl" title=$shop->oxshops__oxname->value}]
    [{block name="email_html_senddownloadlinks_infoheader"}]
        [{oxmultilang ident="EMAIL_SENDDOWNLOADS_GREETING"}], [{$order->oxorder__oxbillsal->value|oxmultilangsal}] [{$order->oxorder__oxbillfname->value}] [{$order->oxorder__oxbilllname->value}],
    [{/block}]

    [{block name="email_html_sendednow_oxordernr"}]
        [{oxmultilang ident="ORDER_NUMBER" suffix="COLON"}] [{$order->oxorder__oxordernr->value}]
    [{/block}]

    [{if $oOrderFileList}]
        [{block name="email_html_senddownloadlinks_download_header"}]
            [{oxmultilang ident="MY_DOWNLOADS_DESC"}]
        [{/block}]
        [{block name="email_html_senddownloadlinks_download_link"}]
            [{foreach from=$oOrderFileList item="oOrderFile"}]
              [{if $order->oxorder__oxpaid->value || !$oOrderFile->oxorderfiles__oxpurchasedonly->value}]
                [{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=download" params="sorderfileid="|cat:$oOrderFile->getId()}] [{$oOrderFile->oxorderfiles__oxfilename->value}]
              [{else}]
                [{$oOrderFile->oxorderfiles__oxfilename->value}] [{oxmultilang ident="DOWNLOADS_PAYMENT_PENDING"}]
              [{/if}]
            [{/foreach}]
        [{/block}]
    [{/if}]

    [{block name="email_html_senddownloadlinks_infofooter"}]
            [{oxmultilang ident="YOUR_TEAM" args=$shop->oxshops__oxname->value}]
    [{/block}]

[{include file="email/html/footer.tpl"}]
