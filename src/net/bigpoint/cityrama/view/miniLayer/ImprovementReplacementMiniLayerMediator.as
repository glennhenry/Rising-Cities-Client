package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.improvement.ImprovementCursorProxy;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementReplacementMiniLayerVo;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.sound.StaticSoundDelegate;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementReplacementMiniLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   
   public class ImprovementReplacementMiniLayerMediator extends Mediator implements IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementReplacementMiniLayerMediator";
      
      public static const LINE_ID_0:uint = 0;
      
      private var _data:ImprovementReplacementMiniLayerVo;
      
      private var _improCursorProxy:ImprovementCursorProxy;
      
      private var _cursorAttachedImprovementCID:Number;
      
      private var _reattach:Boolean = false;
      
      public function ImprovementReplacementMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
         this._improCursorProxy = facade.retrieveProxy(ImprovementCursorProxy.NAME) as ImprovementCursorProxy;
         if(this._improCursorProxy.currentSelectedImprovementCid != -1)
         {
            this._cursorAttachedImprovementCID = this._improCursorProxy.currentSelectedImprovementCid;
            sendNotification(ApplicationNotificationConstants.DETACH_IMPROVEMENT_FROM_CURSOR);
         }
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(ImprovementReplacementMiniLayer.REPLACE_IMPROVEMENT,this.handleReplace);
         this.component.addEventListener(ImprovementReplacementMiniLayer.RENEW_IMPROVEMENT,this.handleRenewImprovement);
         this.component.addEventListener(ImprovementReplacementMiniLayer.KEEP_IMPROVEMENT,this.handleKeepImprovement);
         this.component.addEventListener(ImprovementReplacementMiniLayer.OPEN_TREASURY,this.handleOpenTreasury);
         this.component.addEventListener(ImprovementReplacementMiniLayer.OLD_IMPRO_OVER,this.handleImprovementOver);
         this.component.addEventListener(ImprovementReplacementMiniLayer.NEW_IMPRO_OVER,this.handleImprovementOver);
         this.component.addEventListener(ImprovementReplacementMiniLayer.IMPRO_OUT,this.handleImprovementOut);
      }
      
      private function handleOpenTreasury(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.OPEN_CURRENCY_PURCHASE,ServerResConst.RESOURCE_REALCURRENCY);
      }
      
      private function handleImprovementOver(param1:Event) : void
      {
         var _loc2_:ImprovementVo = null;
         var _loc3_:Group = null;
         param1.stopPropagation();
         switch(param1.type)
         {
            case ImprovementReplacementMiniLayer.OLD_IMPRO_OVER:
               _loc2_ = this._data.improvementVo;
               _loc3_ = (param1.target as ImprovementReplacementMiniLayer).oldImprovementGroup;
               break;
            case ImprovementReplacementMiniLayer.NEW_IMPRO_OVER:
               _loc2_ = this._data.newImprovement;
               _loc3_ = (param1.target as ImprovementReplacementMiniLayer).newImprovementGroup;
         }
         var _loc4_:Point = _loc3_.localToGlobal(new Point());
         _loc4_.x += _loc3_.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
            "cid":_loc2_.config.id,
            "lineId":LINE_ID_0,
            "pt":_loc4_,
            "impro":_loc2_
         },this.getMediatorName());
      }
      
      private function handleImprovementOut(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function handleKeepImprovement(param1:Event) : void
      {
         param1.stopPropagation();
         this._reattach = true;
         this.handleClose(null);
      }
      
      private function handleRenewImprovement(param1:Event) : void
      {
         param1.stopPropagation();
         StaticSoundDelegate.playSound(StaticSoundDelegate.RC_SPEND);
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PROLONG_PLAYFIELDITEM_IMPROVEMENT,this._data.improvementVo);
         this.handleClose(null);
      }
      
      private function handleReplace(param1:Event) : void
      {
         param1.stopPropagation();
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_EQUIP_PLAYFIELDITEM_IMPROVEMENT,{
            "bid":this._data.buildingId,
            "imp":this._data.newImprovement.config.id,
            "slot":this._data.slotId
         });
         this.handleClose(null);
      }
      
      private function handleClose(param1:Event) : void
      {
         if(this._reattach || Boolean(param1))
         {
            sendNotification(ApplicationNotificationConstants.ATTACH_IMPROVEMENT_TO_CURSOR,this._cursorAttachedImprovementCID);
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT,true);
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.IMPROVEMENT_SLOT_HIGHLIGHT,false);
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeListener();
      }
      
      private function removeListener() : void
      {
         this.component.removeEventListener(Event.CLOSE,this.handleClose);
         this.component.removeEventListener(ImprovementReplacementMiniLayer.REPLACE_IMPROVEMENT,this.handleReplace);
         this.component.removeEventListener(ImprovementReplacementMiniLayer.RENEW_IMPROVEMENT,this.handleRenewImprovement);
         this.component.removeEventListener(ImprovementReplacementMiniLayer.KEEP_IMPROVEMENT,this.handleKeepImprovement);
         this.component.removeEventListener(ImprovementReplacementMiniLayer.OLD_IMPRO_OVER,this.handleImprovementOver);
         this.component.removeEventListener(ImprovementReplacementMiniLayer.NEW_IMPRO_OVER,this.handleImprovementOver);
         this.component.removeEventListener(ImprovementReplacementMiniLayer.IMPRO_OUT,this.handleImprovementOut);
         this.component.removeEventListener(ImprovementReplacementMiniLayer.OPEN_TREASURY,this.handleOpenTreasury);
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
                  this._data.realCurrency = _loc2_.realCurrency;
                  this.component.data = this._data;
               }
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ImprovementReplacementMiniLayerVo)
         {
            this._data = param1 as ImprovementReplacementMiniLayerVo;
            this.component.data = this._data;
         }
      }
      
      public function get component() : ImprovementReplacementMiniLayer
      {
         return super.viewComponent as ImprovementReplacementMiniLayer;
      }
   }
}

