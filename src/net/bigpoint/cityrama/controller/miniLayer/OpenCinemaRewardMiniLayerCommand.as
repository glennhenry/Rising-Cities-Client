package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.cinema.CinemaProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.CinemaRewardMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.CinemaRewardMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenCinemaRewardMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenCinemaRewardMiniLayerCommand()
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
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:CinemaProxy = facade.retrieveProxy(CinemaProxy.NAME) as CinemaProxy;
         var _loc3_:PopupSettingsVo = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
         if(_loc4_)
         {
            _loc3_.modal = true;
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               _loc3_.viewClass = CinemaRewardMiniLayer;
               if(!_loc5_)
               {
                  _loc3_.mediatorClass = CinemaRewardMiniLayerMediator;
                  if(!_loc5_)
                  {
                     §§goto(addr0080);
                  }
                  §§goto(addr008f);
               }
               §§goto(addr009d);
            }
            addr0080:
            _loc3_.mediatorName = CinemaRewardMiniLayerMediator.NAME;
            if(!_loc5_)
            {
               addr008f:
               _loc3_.data = _loc2_.cinemaRewardMiniLayerVo;
               if(_loc4_)
               {
                  addr009d:
                  facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc3_);
               }
            }
            return;
         }
         §§goto(addr008f);
      }
   }
}

