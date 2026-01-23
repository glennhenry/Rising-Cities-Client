package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldExpansionBuyVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.miniLayer.MiniLayerProxy;
   import net.bigpoint.cityrama.model.miniLayer.vo.ExpansionMiniLayerVo;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ExpansionMiniLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ExpansionMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ExpansionMiniLayerMediator";
      
      private var _expansionFieldObject:ExpansionFieldObject;
      
      public function ExpansionMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      private function setLayerData() : void
      {
         var _loc1_:MiniLayerProxy = facade.retrieveProxy(MiniLayerProxy.NAME) as MiniLayerProxy;
         var _loc2_:ExpansionFieldObjectVo = this._expansionFieldObject.billboardObjectVo as ExpansionFieldObjectVo;
         var _loc3_:ExpansionMiniLayerVo = _loc1_.getExpansionVo(_loc2_);
         this.component.setData(_loc3_);
      }
      
      private function addListener() : void
      {
         this.component.buyExpansion.addEventListener(MouseEvent.CLICK,this.onExpansionBought);
         this.component.ddButton.addEventListener(MouseEvent.CLICK,this.onDDBuy);
         this.component.ddButton.addEventListener(MouseEvent.MOUSE_OVER,this.onDDOver);
         this.component.ddButton.addEventListener(MouseEvent.MOUSE_OUT,this.onDDOut);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function onDDOut(param1:MouseEvent) : void
      {
         this.component.buyExpansion.visible = true;
         this.component.instantDDText.visible = false;
      }
      
      private function onDDOver(param1:MouseEvent) : void
      {
         this.component.buyExpansion.visible = false;
         this.component.instantDDText.visible = true;
      }
      
      private function onDDBuy(param1:MouseEvent) : void
      {
         var _loc2_:ExpansionFieldObjectVo = null;
         var _loc3_:PlayfieldExpansionBuyVo = null;
         if(!this.component.ddButton.showPlus)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            _loc2_ = this._expansionFieldObject.billboardObjectVo as ExpansionFieldObjectVo;
            _loc3_ = new PlayfieldExpansionBuyVo();
            _loc3_.expansion = _loc2_;
            _loc3_.cpe = _loc2_.configPlayfieldItemVo.id;
            _loc3_.pp = true;
            this.addMockPhases(this._expansionFieldObject,true);
            facade.sendNotification(ApplicationNotificationConstants.BUY_PLAYFIELD_EXTENSION,_loc3_);
            this.finalCall();
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
      }
      
      private function onExpansionBought(param1:MouseEvent) : void
      {
         StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
         var _loc2_:ExpansionFieldObjectVo = this._expansionFieldObject.billboardObjectVo as ExpansionFieldObjectVo;
         var _loc3_:PlayfieldExpansionBuyVo = new PlayfieldExpansionBuyVo();
         _loc3_.expansion = _loc2_;
         _loc3_.cpe = _loc2_.configPlayfieldItemVo.id;
         _loc3_.pp = false;
         this.addMockPhases(this._expansionFieldObject,false);
         facade.sendNotification(ApplicationNotificationConstants.BUY_PLAYFIELD_EXTENSION,_loc3_);
         this.finalCall();
      }
      
      private function finalCall(param1:Event = null) : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.buyExpansion.removeEventListener(MouseEvent.CLICK,this.onExpansionBought);
         this.component.ddButton.removeEventListener(MouseEvent.CLICK,this.onDDBuy);
         this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OVER,this.onDDOver);
         this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onDDOut);
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ExpansionFieldObject)
         {
            this._expansionFieldObject = param1 as ExpansionFieldObject;
            this.setLayerData();
            this.addListener();
         }
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         sendNotification(VirtualTaskNotificationInterest.MINILAYER_BUYEXPANSION_OPENED);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.component.buyExpansion.removeEventListener(MouseEvent.CLICK,this.onExpansionBought);
         this.component.ddButton.removeEventListener(MouseEvent.CLICK,this.onDDBuy);
         this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OVER,this.onDDOver);
         this.component.ddButton.removeEventListener(MouseEvent.MOUSE_OUT,this.onDDOut);
         sendNotification(VirtualTaskNotificationInterest.MINILAYER_BUYEXPANSION_CLOSED);
      }
      
      public function get component() : ExpansionMiniLayer
      {
         return super.viewComponent as ExpansionMiniLayer;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.EVENTS_CHANGED,ApplicationNotificationConstants.REALCURRENCY_CHANGED,ApplicationNotificationConstants.INGAMECURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
            case ApplicationNotificationConstants.INGAMECURRENCY_CHANGED:
            case ApplicationNotificationConstants.EVENTS_CHANGED:
               this.refresh();
         }
      }
      
      private function refresh() : void
      {
         this.setLayerData();
      }
      
      private function addMockPhases(param1:ExpansionFieldObject, param2:Boolean) : void
      {
         var _loc7_:Object = null;
         var _loc8_:ConfigOutputDTO = null;
         var _loc3_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc4_:PlayfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
         var _loc5_:ConfigPhaseDTO = new ConfigPhaseDTO(null);
         var _loc6_:Vector.<ConfigOutputDTO> = new Vector.<ConfigOutputDTO>();
         _loc7_ = {};
         _loc7_.t = ServerOutputConstants.RESOURCE;
         _loc7_.cid = _loc3_.config.resourceIds[ServerResConst.RESOURCE_EXPERIENCE];
         _loc7_.o = _loc4_.getExpansionXP(param1.expansionFieldObjectVo.configOrigin);
         _loc8_ = new ConfigOutputDTO(_loc7_);
         _loc8_.resourceConfig = _loc3_.config.resources[_loc7_.cid];
         _loc6_.push(_loc8_);
         _loc7_ = {};
         _loc7_.t = ServerOutputConstants.RESOURCE;
         if(param2)
         {
            _loc7_.cid = _loc3_.config.resourceIds[ServerResConst.RESOURCE_REALCURRENCY];
            _loc7_.o = -_loc4_.getRCExpansionCosts(param1.expansionFieldObjectVo.configOrigin);
         }
         else
         {
            _loc7_.cid = _loc3_.config.resourceIds[ServerResConst.RESOURCE_VIRTUALCURRENCY];
            _loc7_.o = -_loc4_.getVCExpansionCosts(param1.expansionFieldObjectVo.configOrigin);
         }
         _loc8_ = new ConfigOutputDTO(_loc7_);
         _loc8_.resourceConfig = _loc3_.config.resources[_loc7_.cid];
         _loc6_.push(_loc8_);
         _loc5_.listEntryOutputs = _loc6_;
         param1.expansionFieldObjectVo.informationFloaterPhase = _loc5_;
      }
   }
}

