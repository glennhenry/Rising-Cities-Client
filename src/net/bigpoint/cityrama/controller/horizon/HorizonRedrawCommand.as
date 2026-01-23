package net.bigpoint.cityrama.controller.horizon
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.horizon.HorizonProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.view.application.ApplicationMediator;
   import net.bigpoint.cityrama.view.horizon.HorizonLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class HorizonRedrawCommand extends SimpleCommand
   {
      
      public function HorizonRedrawCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:int = param1.getBody() as int;
         if(_loc5_)
         {
            if(!facade.hasProxy(HorizonProxy.NAME))
            {
               if(!(_loc4_ && Boolean(this)))
               {
                  facade.removeProxy(HorizonProxy.NAME);
                  if(!_loc4_)
                  {
                     addr0053:
                     if(facade.hasMediator(HorizonLayerMediator.NAME))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           facade.removeMediator(HorizonLayerMediator.NAME);
                        }
                     }
                  }
                  var _loc3_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
                  if(!_loc4_)
                  {
                     facade.registerProxy(new HorizonProxy(HorizonProxy.NAME,new HorizionSettingsVo(_loc2_)));
                     if(!(_loc4_ && Boolean(_loc3_)))
                     {
                        facade.registerMediator(new HorizonLayerMediator(HorizonLayerMediator.NAME,_loc3_.component.mainView));
                        if(_loc5_ || Boolean(param1))
                        {
                           addr00fa:
                           sendNotification(ApplicationNotificationConstants.UPDATE_VIEWPORT);
                        }
                     }
                     return;
                  }
                  §§goto(addr00fa);
               }
            }
         }
         §§goto(addr0053);
      }
   }
}

