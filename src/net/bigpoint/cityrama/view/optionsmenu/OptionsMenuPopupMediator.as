package net.bigpoint.cityrama.view.optionsmenu
{
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.detailViews.MainLayerProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.OptionsDetailViewVo;
   import net.bigpoint.cityrama.model.optionsMenu.vo.OptionsListItemVo;
   import net.bigpoint.cityrama.model.serverStorage.ServerStorageProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.optionsmenu.ui.components.OptionsItemRenderer;
   import net.bigpoint.cityrama.view.optionsmenu.ui.components.OptionsMenuPopup;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.CheckBox;
   
   public class OptionsMenuPopupMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "OptionsMenuPopupMediator";
      
      private var _serverStorageProxy:ServerStorageProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _layerData:OptionsDetailViewVo;
      
      public function OptionsMenuPopupMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
         this._serverStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(OptionsItemRenderer.EVENT_ITEM_SELECTION_CHANGED,this.handleItemChanged);
         this.component.addEventListener(OptionsItemRenderer.EVENT_EDIT_ACCOUNT,this.handleEditAccount);
         var _loc3_:MainLayerProxy = facade.retrieveProxy(MainLayerProxy.NAME) as MainLayerProxy;
         this.setData(_loc3_.getOptionsDetails());
      }
      
      private function handleEditAccount(param1:Event) : void
      {
         this._soundProxy.playButtonClick();
         var _loc2_:FlashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
         var _loc3_:String = _loc2_.profileUri;
         if(_loc3_ != "")
         {
            navigateToURL(new URLRequest(_loc3_),"_top");
         }
      }
      
      private function handleItemChanged(param1:Event) : void
      {
         var _loc2_:CheckBox = param1.target.checkBox as CheckBox;
         var _loc3_:OptionsListItemVo = OptionsListItemVo(param1.target.data);
         var _loc4_:ServerStorageProxy = facade.retrieveProxy(ServerStorageProxy.NAME) as ServerStorageProxy;
         _loc4_.updateState(_loc3_.locaID,_loc2_.selected);
      }
      
      private function handleClose(param1:Event) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(OptionsItemRenderer.EVENT_ITEM_SELECTION_CHANGED,this.handleItemChanged);
         this.component.removeEventListener(OptionsItemRenderer.EVENT_EDIT_ACCOUNT,this.handleEditAccount);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         facade.sendNotification(ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS,this.mediatorName);
      }
      
      override public function getMediatorName() : String
      {
         return super.mediatorName;
      }
      
      public function setData(param1:Object) : void
      {
         this._layerData = param1 as OptionsDetailViewVo;
         this.component.data = this._layerData;
      }
      
      public function get component() : OptionsMenuPopup
      {
         return super.viewComponent as OptionsMenuPopup;
      }
   }
}

