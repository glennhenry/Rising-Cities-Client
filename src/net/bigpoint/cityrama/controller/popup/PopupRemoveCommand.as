package net.bigpoint.cityrama.controller.popup
{
   import mx.core.IFlexDisplayObject;
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.popup.PopupProxy;
   import net.bigpoint.cityrama.model.popup.vo.PopupSettingsVo;
   import net.bigpoint.cityrama.view.popupContainer.PopupContainerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PopupRemoveCommand extends SimpleCommand
   {
      
      public function PopupRemoveCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc9_:TimerProxy = null;
         var _loc2_:PopupProxy = PopupProxy(facade.retrieveProxy(PopupProxy.NAME));
         var _loc3_:PopupContainerMediator = facade.retrieveMediator(PopupContainerMediator.NAME) as PopupContainerMediator;
         var _loc4_:String = param1.getBody() as String;
         var _loc5_:PopupSettingsVo = _loc2_.removePopupSettings(_loc4_);
         if(!_loc5_)
         {
            return;
         }
         var _loc6_:IMediator = facade.removeMediator(_loc5_.mediatorName);
         if(_loc6_)
         {
            var _loc7_:IFlexDisplayObject = IFlexDisplayObject(_loc6_.getViewComponent());
            Object(null.parent).removeElement(null);
            _loc2_.removePopupSettings(_loc5_.mediatorName);
            _loc5_.popupRemoved();
            _loc5_ = null;
            if(_loc3_.modalCoverTop.visible)
            {
               _loc3_.modalCoverTop.visible = false;
               _loc3_.modalCover.visible = true;
            }
            if(!_loc2_.isModalPopupOpened())
            {
               _loc3_.modalCover.visible = false;
            }
         }
         if(_loc3_.popupContainer.numElements)
         {
            var _loc8_:UIComponent = _loc3_.popupContainer.getElementAt(_loc3_.popupContainer.numElements - 1) as UIComponent;
            _loc8_.mouseEnabled = true;
            null.mouseChildren = true;
         }
         if(_loc2_.popupReferences[PopupSettingsVo.MINI_POPUP].length == 0 && _loc2_.popupReferences[PopupSettingsVo.PAPER_POPUP].length == 0 && _loc2_.popupReferences[PopupSettingsVo.STACK_POPUP].length == 0)
         {
            facade.sendNotification(ApplicationNotificationConstants.RESUME_ALL_WALKERS);
            _loc9_ = super.facade.retrieveProxy(TimerProxy.NAME) as TimerProxy;
            _loc9_.render = true;
         }
      }
   }
}

