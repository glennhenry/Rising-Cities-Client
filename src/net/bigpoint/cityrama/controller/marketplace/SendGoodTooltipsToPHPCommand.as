package net.bigpoint.cityrama.controller.marketplace
{
   import flash.external.ExternalInterface;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGoodDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class SendGoodTooltipsToPHPCommand extends SimpleCommand implements ICommand
   {
      
      public function SendGoodTooltipsToPHPCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var goodObjectVo:GoodObjectVo = null;
         var productName:String = null;
         var producer:String = null;
         var consumer:String = null;
         var toolTipString:String = null;
         var producerNames:Vector.<String> = null;
         var prodName:String = null;
         var consumerNames:Vector.<String> = null;
         var consName:String = null;
         var configGood:ConfigGoodDTO = null;
         var item:ConfigPlayfieldItemDTO = null;
         var prodStr:String = null;
         var item2:ConfigPlayfieldItemDTO = null;
         var conStr:String = null;
         var note:INotification = param1;
         var configProxy:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var goodStockProxy:PlayerGoodsStockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         var jsonObj:Object = {};
         jsonObj.gl = [];
         for each(configGood in configProxy.config.goods)
         {
            if(configGood.sellable)
            {
               goodObjectVo = goodStockProxy.getGoodByConfigId(configGood.id);
               productName = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + configGood.localeId);
               producer = "";
               consumer = "";
               toolTipString = "";
               if(goodObjectVo.producer.length > 0)
               {
                  producerNames = new Vector.<String>();
                  for each(item in goodObjectVo.producer)
                  {
                     prodName = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + item.localeId);
                     if(producerNames.indexOf(prodName) == -1)
                     {
                        producerNames.push(prodName);
                     }
                  }
                  for each(prodStr in producerNames)
                  {
                     if(producer == "")
                     {
                        producer = prodStr;
                     }
                     else
                     {
                        producer = producer + ", " + prodStr;
                     }
                  }
               }
               else
               {
                  producer = " - ";
               }
               if(goodObjectVo.consumer.length > 0)
               {
                  consumerNames = new Vector.<String>();
                  for each(item2 in goodObjectVo.consumer)
                  {
                     consName = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + item2.localeId);
                     if(consumerNames.indexOf(consName) == -1)
                     {
                        consumerNames.push(consName);
                     }
                  }
                  for each(conStr in consumerNames)
                  {
                     if(consumer == "")
                     {
                        consumer = conStr;
                     }
                     else
                     {
                        consumer = consumer + ", " + conStr;
                     }
                  }
               }
               else
               {
                  consumer = " - ";
               }
               if(goodObjectVo.config.isConstructionGood)
               {
                  toolTipString = LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.detailInfo.constructionGood",[productName,producer]);
               }
               else if(producer == " - " && consumer == " - ")
               {
                  toolTipString = LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.detailInfo." + goodObjectVo.localeId);
               }
               else
               {
                  toolTipString = LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.detailInfo",[productName,producer,consumer]);
               }
               jsonObj.gl.push({
                  "cid":goodObjectVo.config.id,
                  "text":toolTipString
               });
            }
         }
         try
         {
            ExternalInterface.call("setMarketInfo",jsonObj);
         }
         catch(e:Error)
         {
         }
      }
   }
}

