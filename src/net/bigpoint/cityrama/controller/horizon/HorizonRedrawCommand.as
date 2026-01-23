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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:int = param1.getBody() as int;
         if(!facade.hasProxy(HorizonProxy.NAME))
         {
            facade.removeProxy(HorizonProxy.NAME);
         }
         if(facade.hasMediator(HorizonLayerMediator.NAME))
         {
            facade.removeMediator(HorizonLayerMediator.NAME);
         }
         var _loc3_:ApplicationMediator = facade.retrieveMediator(ApplicationMediator.NAME) as ApplicationMediator;
         facade.registerProxy(new HorizonProxy(HorizonProxy.NAME,new HorizionSettingsVo(_loc2_)));
         facade.registerMediator(new HorizonLayerMediator(HorizonLayerMediator.NAME,_loc3_.component.mainView));
         sendNotification(ApplicationNotificationConstants.UPDATE_VIEWPORT);
      }
   }
}

