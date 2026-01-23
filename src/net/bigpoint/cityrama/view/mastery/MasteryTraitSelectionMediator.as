package net.bigpoint.cityrama.view.mastery
{
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import mx.events.ItemClickEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.quest.ClickTaskNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.mastery.MasteryBonusTraitGroupVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.interfaces.IDataReceiverMediator;
   import net.bigpoint.cityrama.view.mastery.components.MasteryTraitItemRenderer;
   import net.bigpoint.cityrama.view.mastery.components.MasteryTraitSelectionLayer;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class MasteryTraitSelectionMediator extends Mediator implements IMediator, IDataReceiverMediator
   {
      
      public static const NAME:String = "MasteryTraitSelectionMediator";
      
      public function MasteryTraitSelectionMediator(param1:String, param2:MasteryTraitSelectionLayer)
      {
         super(param1,param2);
      }
      
      private function addEventListeners() : void
      {
         this.component.traitList.addEventListener(MasteryTraitItemRenderer.TRAIT_SELECTED,this.traitSelectedHandler);
         this.component.addEventListener(Event.CLOSE,this.closeHandler);
      }
      
      private function removeEventListeners() : void
      {
         this.component.traitList.removeEventListener(MasteryTraitItemRenderer.TRAIT_SELECTED,this.traitSelectedHandler);
         this.component.addEventListener(Event.CLOSE,this.closeHandler);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this.addEventListeners();
      }
      
      override public function onRemove() : void
      {
         super.onRemove();
         this.removeEventListeners();
      }
      
      private function get component() : MasteryTraitSelectionLayer
      {
         return this.viewComponent as MasteryTraitSelectionLayer;
      }
      
      private function traitSelectedHandler(param1:ItemClickEvent) : void
      {
         var _loc3_:Object = null;
         var _loc2_:PlayfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         if(_loc2_.clickObject != null)
         {
            if(_loc2_.clickObject is ResidentialFieldObject)
            {
               _loc3_ = {};
               _loc3_.buildingId = (_loc2_.clickObject as ResidentialFieldObject).billboardObjectVo.buildingDTO.id;
               _loc3_.masteryBonusPick = param1.index + 1;
               _loc3_.masteryBonusId = (_loc2_.clickObject as ResidentialFieldObject).billboardObjectVo.buildingDTO.currentMasteryBonus.configBonusId;
               facade.sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_MASTERY_BUILDING_PROCESS,_loc3_);
               facade.sendNotification(ClickTaskNotificationConstants.MASTERY_TRAIT_SELECTED);
            }
         }
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
      }
      
      private function closeHandler(param1:Event) : void
      {
         facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE,this.mediatorName);
         var _loc2_:PlayfieldInteractiveProxy = facade.retrieveProxy(PlayfieldInteractiveProxy.NAME) as PlayfieldInteractiveProxy;
         if(_loc2_.clickObject != null)
         {
            if(_loc2_.clickObject is ResidentialFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.OPEN_RESIDENTIALBOOK,{"residential":(_loc2_.clickObject as ResidentialFieldObject).residentialFieldObjectVo});
            }
         }
      }
      
      public function setData(param1:Object) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:MasteryBonusTraitGroupVo = null;
         if(param1 is Vector.<MasteryBonusTraitGroupVo>)
         {
            _loc2_ = new ArrayCollection();
            for each(_loc3_ in param1)
            {
               _loc2_.addItem(_loc3_);
            }
            this.component.data = _loc2_;
         }
      }
   }
}

