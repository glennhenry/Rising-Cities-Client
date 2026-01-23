package net.bigpoint.cityrama.view.miniLayer
{
   import flash.events.Event;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.QuestGFXIDLayerConstants;
   import net.bigpoint.cityrama.model.improvement.vo.ImprovementVo;
   import net.bigpoint.cityrama.model.miniLayer.vo.ImprovementMiniLayerVo;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.miniLayer.components.ImprovementInfoMiniLayerComponent;
   import net.bigpoint.cityrama.view.miniLayer.ui.ImprovementClickInfoMiniLayer;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UiInfolayerAlignmentLine;
   import net.bigpoint.cityrama.view.userInterfaceInfoLayer.UserInterfaceInfoLayerMediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ImprovementClickInfoMiniLayerMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "ImprovementClickInfoMiniLayerMediator";
      
      public static const LINE_ID_0:uint = 0;
      
      private var _data:ImprovementMiniLayerVo;
      
      public function ImprovementClickInfoMiniLayerMediator(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         facade.registerMediator(new UserInterfaceInfoLayerMediator(new <UiInfolayerAlignmentLine>[this.component.uiInfolayerAlignmentLine],this,UserInterfaceInfoLayerMediator.DELAY_SMOOTH));
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.component.addEventListener(Event.CLOSE,this.handleClose);
         this.component.addEventListener(ImprovementClickInfoMiniLayer.FEATURE_IMPROVEMENT,this.handleFeatureScreen);
         this.component.addEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER,this.handleImprovementOver);
         this.component.addEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
      }
      
      private function handleImprovementOut(param1:Event) : void
      {
         sendNotification(ApplicationNotificationConstants.HIDE_UI_INFOLAYER);
      }
      
      private function handleImprovementOver(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Number = this._data.improvementVo.config.id;
         var _loc3_:ImprovementInfoMiniLayerComponent = param1.target as ImprovementInfoMiniLayerComponent;
         var _loc4_:Point = _loc3_.improvementGroup.localToGlobal(new Point());
         _loc4_.x += _loc3_.improvementGroup.width / 2;
         sendNotification(ApplicationNotificationConstants.SHOW_IMPROVEMENT_IN_UI_INFOLAYER,{
            "cid":_loc2_,
            "lineId":LINE_ID_0,
            "pt":_loc4_,
            "impro":this._data.improvementVo
         },this.getMediatorName());
      }
      
      private function handleFeatureScreen(param1:Event) : void
      {
         param1.stopPropagation();
         var _loc2_:Object = new Object();
         _loc2_.quest = false;
         _loc2_.feature = QuestGFXIDLayerConstants.IMPROVEMENT_FEATURE_EFFECTS;
         sendNotification(ApplicationNotificationConstants.OPEN_BIG_FEATURE_OR_CHARACTER_SCREEN,_loc2_);
      }
      
      private function handleClose(param1:Event) : void
      {
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
         this.component.removeEventListener(ImprovementClickInfoMiniLayer.FEATURE_IMPROVEMENT,this.handleFeatureScreen);
         this.component.removeEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OVER,this.handleImprovementOver);
         this.component.removeEventListener(ImprovementInfoMiniLayerComponent.IMPROVEMENT_OUT,this.handleImprovementOut);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.IMPROVEMENT_UPDATED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:ImprovementVo = null;
         switch(param1.getName())
         {
            case ApplicationNotificationConstants.IMPROVEMENT_UPDATED:
               _loc2_ = param1.getBody() as ImprovementVo;
               if(_loc2_)
               {
                  if(_loc2_.equippedBuildingId == this._data.improvementVo.equippedBuildingId && _loc2_.currentSlotId == this._data.improvementVo.currentSlotId)
                  {
                     this.handleClose(null);
                  }
               }
         }
      }
      
      public function setData(param1:Object) : void
      {
         if(param1 is ImprovementMiniLayerVo)
         {
            this._data = param1 as ImprovementMiniLayerVo;
            this.component.data = this._data;
         }
      }
      
      public function get component() : ImprovementClickInfoMiniLayer
      {
         return super.viewComponent as ImprovementClickInfoMiniLayer;
      }
   }
}

