package net.bigpoint.cityrama.controller.improvement.improvementStore
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.improvement.ImprovementStoreProxy;
   import net.bigpoint.cityrama.view.homeImprovement.improvementStore.ImprovementStoreListMediator;
   import net.bigpoint.cityrama.view.ingameStore.ui.components.IngameStoreBook;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ImprovementStoreContentChangeCommand extends SimpleCommand implements ICommand
   {
      
      public function ImprovementStoreContentChangeCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:int = 0;
         var _loc3_:IngameStoreBook = null;
         var _loc4_:ImprovementStoreProxy = null;
         var _loc5_:ImprovementStoreListMediator = null;
         if(_loc7_ || Boolean(param1))
         {
            if(param1.getBody())
            {
               if(_loc7_ || Boolean(_loc3_))
               {
                  sendNotification(ApplicationNotificationConstants.IMPROVEMENT_STORE_CLEAN_CONTENT);
                  if(_loc7_)
                  {
                     addr005d:
                     _loc2_ = param1.getBody().content as int;
                  }
                  _loc3_ = param1.getBody().container as IngameStoreBook;
                  _loc4_ = facade.retrieveProxy(ImprovementStoreProxy.NAME) as ImprovementStoreProxy;
                  if(_loc7_)
                  {
                     §§push(param1.getBody().content == null);
                     if(_loc7_)
                     {
                        var _temp_4:* = §§pop();
                        §§push(_temp_4);
                        if(!_temp_4)
                        {
                           if(!_loc6_)
                           {
                              addr00ba:
                              §§pop();
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 §§goto(addr00cd);
                              }
                              §§goto(addr00d1);
                           }
                        }
                        addr00cd:
                        §§goto(addr00c9);
                     }
                     §§goto(addr00ba);
                  }
                  addr00c9:
                  if(_loc2_ < 0)
                  {
                     addr00d1:
                     _loc5_ = facade.retrieveMediator(ImprovementStoreListMediator.NAME) as ImprovementStoreListMediator;
                     if(_loc5_)
                     {
                        if(_loc7_ || Boolean(_loc2_))
                        {
                           facade.removeMediator(ImprovementStoreListMediator.NAME);
                        }
                     }
                     _loc5_ = new ImprovementStoreListMediator(_loc3_);
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        facade.registerMediator(_loc5_);
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           addr0140:
                           _loc5_.setData(_loc4_.getImprovementBoosterPacks());
                        }
                        §§goto(addr014d);
                     }
                     §§goto(addr0140);
                  }
                  §§goto(addr014d);
               }
               §§goto(addr005d);
            }
            addr014d:
            return;
         }
         §§goto(addr005d);
      }
   }
}

