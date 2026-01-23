package net.bigpoint.cityrama.controller.miniLayer
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.miniLayer.ProfessionalFireMiniLayerMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class OpenProfessionalFireMiniLayerCommand extends SimpleCommand implements ICommand
   {
      
      public function OpenProfessionalFireMiniLayerCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:PopupSettingsVo = null;
         var _loc2_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         var _loc3_:Number = param1.getBody() as Number;
         if(!isNaN(_loc3_))
         {
            _loc4_ = new PopupSettingsVo(PopupSettingsVo.MINI_POPUP);
            _loc4_.modal = true;
            _loc4_.viewClass = QueryMiniLayer;
            _loc4_.mediatorClass = ProfessionalFireMiniLayerMediator;
            _loc4_.mediatorName = ProfessionalFireMiniLayerMediator.NAME;
            _loc4_.data = _loc3_;
            _loc4_.modal = true;
            facade.sendNotification(ApplicationNotificationConstants.POPUP_CREATE,_loc4_);
         }
      }
   }
}

