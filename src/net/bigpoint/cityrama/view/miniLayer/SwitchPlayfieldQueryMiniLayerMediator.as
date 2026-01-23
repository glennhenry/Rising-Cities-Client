package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.QueryMiniLayerVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.QueryMiniLayer;
   import net.bigpoint.util.LocaUtils;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class SwitchPlayfieldQueryMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "SwitchPlayfieldQueryMiniLayerMediator";
      
      private var _targetPlayfieldId:uint;
      
      public function SwitchPlayfieldQueryMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         sendNotification(VirtualTaskNotificationInterest.PLAYFIELDSWITCH_MINILAYER_OPENED);
         this.setLayerData();
         this.addListener();
      }
      
      private function setLayerData() : void
      {
         var _loc1_:QueryMiniLayerVo = new QueryMiniLayerVo(QueryMiniLayerVo.LAYER_TYPE_QUERY);
         _loc1_.title = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.title.capital");
         _loc1_.confirmBtnLabel = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.acceptButton.capital");
         _loc1_.confirmBtnTooltip = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.acceptButton.tooltip");
         _loc1_.denyBtnLabel = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.denyButton.capital");
         _loc1_.denyBtnTooltip = LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.denyButton.tooltip");
         _loc1_.layerText = HorizionSettingsVo.getMinilayerText(HorizionSettingsVo.playfieldIdToGfxId(this._targetPlayfieldId));
         this.component.data = _loc1_;
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.handlePlayfieldSwitch);
         this.component.addEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
         this.component.addEventListener(Event.CLOSE,this.handleClose);
      }
      
      private function handlePlayfieldSwitch(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_SWITCH_PLAYFIELD,this._targetPlayfieldId);
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,NAME);
      }
      
      private function handleClose(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,NAME);
      }
      
      override public function onRemove() : void
      {
         this.removeListener();
         sendNotification(VirtualTaskNotificationInterest.PLAYFIELDSWITCH_MINILAYER_CLOSED);
         super.onRemove();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(QueryMiniLayer.CONFIRM_CLICKED,this.handlePlayfieldSwitch);
         this.component.removeEventListener(QueryMiniLayer.DENY_CLICKED,this.handleClose);
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
      }
      
      public function get component() : QueryMiniLayer
      {
         return super.viewComponent as QueryMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is uint)
         {
            this._targetPlayfieldId = param1 as uint;
         }
      }
   }
}

