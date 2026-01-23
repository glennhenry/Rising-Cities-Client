package net.bigpoint.cityrama.controller.boosterpackstore
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackDetailMediator;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackListMediator;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackSublevelDetailMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BoosterpackBookContentChangeCommand extends SimpleCommand
   {
      
      public function BoosterpackBookContentChangeCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:int = 0;
         var _loc3_:IngameStoreBook = null;
         var _loc4_:BoosterpackBookProxy = null;
         var _loc5_:BoosterpackListMediator = null;
         var _loc6_:BoosterpackDetailMediator = null;
         var _loc7_:BoosterpackSublevelDetailMediator = null;
         var _loc8_:String = null;
         var _loc9_:BoosterpackVo = null;
         if(param1.getBody())
         {
            sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CLEAN_CONTENT);
            _loc2_ = param1.getBody().content as int;
            _loc3_ = param1.getBody().container as IngameStoreBook;
            _loc4_ = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
            if(param1.getBody().content == null || _loc2_ < 0)
            {
               _loc5_ = facade.retrieveMediator(BoosterpackListMediator.NAME) as BoosterpackListMediator;
               if(_loc5_)
               {
                  facade.removeMediator(BoosterpackListMediator.NAME);
               }
               _loc5_ = new BoosterpackListMediator(_loc3_);
               facade.registerMediator(_loc5_);
               _loc5_.setData(_loc4_.getBoosterpackVos(BoosterpackBookProxy.ALL));
            }
            else
            {
               _loc6_ = facade.retrieveMediator(BoosterpackDetailMediator.NAME) as BoosterpackDetailMediator;
               if(_loc6_)
               {
                  facade.removeMediator(BoosterpackDetailMediator.NAME);
               }
               _loc7_ = facade.retrieveMediator(BoosterpackSublevelDetailMediator.NAME) as BoosterpackSublevelDetailMediator;
               if(_loc7_)
               {
                  facade.removeMediator(BoosterpackSublevelDetailMediator.NAME);
               }
               _loc8_ = BoosterpackBookProxy.ALL;
               if(param1.getBody().type)
               {
                  _loc8_ = param1.getBody().type as String;
               }
               _loc9_ = _loc4_.getBoosterpackVoBySlotId(_loc2_,_loc8_);
               if(_loc9_.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER)
               {
                  _loc7_ = new BoosterpackSublevelDetailMediator(_loc3_);
                  facade.registerMediator(_loc7_);
                  _loc7_.setData(_loc9_);
               }
               else
               {
                  _loc6_ = new BoosterpackDetailMediator(_loc3_);
                  facade.registerMediator(_loc6_);
                  _loc6_.setData(_loc9_);
               }
            }
         }
      }
   }
}

