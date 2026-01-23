package net.bigpoint.cityrama.controller.boosterpackstore
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackAnimationLayerVo;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackAnimationMediator;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackListMediator;
   import net.bigpoint.cityrama.view.boosterpackstore.BoosterpackSublevelAnimationMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BoosterpackBookAnimationCommand extends SimpleCommand
   {
      
      public function BoosterpackBookAnimationCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:IngameStoreBook = null;
         var _loc3_:BoosterpackBookProxy = null;
         var _loc4_:BoosterpackAnimationLayerVo = null;
         var _loc5_:BoosterpackSublevelAnimationMediator = null;
         var _loc6_:BoosterpackAnimationMediator = null;
         if(!_loc7_)
         {
            if(param1.getBody())
            {
               if(_loc8_ || Boolean(_loc2_))
               {
                  sendNotification(ApplicationNotificationConstants.BOOSTERPACKBOOK_CLEAN_CONTENT);
               }
               addr0057:
               _loc2_ = param1.getBody().container as IngameStoreBook;
               _loc3_ = facade.retrieveProxy(BoosterpackBookProxy.NAME) as BoosterpackBookProxy;
               if(!_loc7_)
               {
                  if(_loc3_.boughtBoosterpackVo.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER)
                  {
                     addr008f:
                     _loc5_ = facade.retrieveMediator(BoosterpackSublevelAnimationMediator.NAME) as BoosterpackSublevelAnimationMediator;
                     if(_loc5_)
                     {
                        if(!_loc7_)
                        {
                           facade.removeMediator(BoosterpackListMediator.NAME);
                        }
                     }
                     _loc5_ = new BoosterpackSublevelAnimationMediator(_loc2_);
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        facade.registerMediator(_loc5_);
                     }
                     _loc4_ = new BoosterpackAnimationLayerVo();
                     _loc4_.rewards = _loc3_.getRewardData();
                     if(_loc8_ || Boolean(this))
                     {
                        _loc4_.boosterpackVo = _loc3_.boughtBoosterpackVo;
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           addr0124:
                           _loc5_.setData(_loc4_);
                        }
                        §§goto(addr01d4);
                     }
                     §§goto(addr0124);
                  }
                  else
                  {
                     _loc6_ = facade.retrieveMediator(BoosterpackAnimationMediator.NAME) as BoosterpackAnimationMediator;
                     if(_loc6_)
                     {
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           facade.removeMediator(BoosterpackListMediator.NAME);
                        }
                     }
                     _loc6_ = new BoosterpackAnimationMediator(_loc2_);
                     if(_loc8_ || Boolean(this))
                     {
                        facade.registerMediator(_loc6_);
                     }
                     _loc4_ = new BoosterpackAnimationLayerVo();
                     _loc4_.rewards = _loc3_.getRewardData();
                     if(_loc8_ || Boolean(_loc2_))
                     {
                        _loc4_.boosterpackVo = _loc3_.boughtBoosterpackVo;
                        if(!(_loc7_ && Boolean(this)))
                        {
                           _loc6_.setData(_loc4_);
                        }
                     }
                  }
                  §§goto(addr01d4);
               }
               §§goto(addr008f);
            }
            addr01d4:
            return;
         }
         §§goto(addr0057);
      }
   }
}

