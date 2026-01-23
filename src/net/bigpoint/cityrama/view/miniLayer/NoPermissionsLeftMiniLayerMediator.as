package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.*;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class NoPermissionsLeftMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "NoPermissionsLeftMiniLayerMediator";
      
      private var _data:BlueprintVo;
      
      private var _objectToBuildVo:IGameObjectVo;
      
      public function NoPermissionsLeftMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
         this.component.buyButton.addEventListener(MouseEvent.CLICK,this.handleButtonClick);
         this.component.addEventListener(Event.CLOSE,this.finalCall);
      }
      
      private function finalCall(param1:Event = null) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         if(param1)
         {
            this.resetMode();
         }
      }
      
      private function handleButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:FieldBuildProxy = null;
         if(this._data.userCanAfford)
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
            _loc2_ = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
            _loc2_.buildAndBuyPermission = true;
            facade.sendNotification(ApplicationNotificationConstants.BUILD_GAMEOBJECT,{
               "obj":this._objectToBuildVo,
               "priceRC":this._data.priceRC
            });
            facade.sendNotification(ApplicationNotificationConstants.BLUEPRINT_SELECTED,{
               "config":this._data.configObj,
               "buyPermission":false
            });
            this.finalCall();
         }
         else
         {
            StaticSoundDelegate.playSound(StaticSoundDelegate.BUTTON_CLICK);
            sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.REALCURRENCY_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:PlayerResourceProxy = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.REALCURRENCY_CHANGED:
               if(this._data)
               {
                  _loc2_ = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
                  this._data.userRC = _loc2_.realCurrency;
                  this.component.data = this._data;
               }
         }
      }
      
      override public function onRemove() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.finalCall);
         this.component.buyButton.removeEventListener(MouseEvent.CLICK,this.handleButtonClick);
         super.onRemove();
      }
      
      private function resetMode() : void
      {
         var _loc1_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         _loc1_.mode = ApplicationModeProxy.MODE_NORMAL;
      }
      
      public function get component() : NoPermissionsLeftMiniLayer
      {
         return super.viewComponent as NoPermissionsLeftMiniLayer;
      }
      
      public function setData(param1:Object) : void
      {
         if(Boolean(param1.blueprint) && param1.blueprint is BlueprintVo)
         {
            this._data = param1.blueprint as BlueprintVo;
            if(this._data)
            {
               this.component.data = this._data;
            }
         }
         if(Boolean(param1.vo) && param1.vo is IGameObjectVo)
         {
            this._objectToBuildVo = param1.vo as IGameObjectVo;
         }
      }
   }
}

