package net.bigpoint.cityrama.view.field.ui.components.fieldObjects.managers
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.TownHallFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.SmartObjectContainer;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IAnimationSlotManager;
   
   public class TownHallAnimationManager extends AnimationSlotManager implements IAnimationSlotManager
   {
      
      private var _townhallFieldObjectVo:TownHallFieldObjectVo;
      
      public function TownHallAnimationManager()
      {
         super();
      }
      
      override public function prepareAnimationSlotManager(param1:BillboardObjectVo, param2:SmartObjectContainer, param3:*) : void
      {
         this._townhallFieldObjectVo = TownHallFieldObjectVo(param1);
         super.prepareAnimationSlotManager(param1,param2,param3);
      }
      
      override protected function assetsLoaded(param1:Event) : void
      {
         _assetsLoaded = true;
         this.invalidateAnimationSlotManager();
      }
      
      override public function invalidateAnimationSlotManager() : void
      {
         if(_assetsLoaded)
         {
            switch(this._townhallFieldObjectVo.fakeAnimationForQuest)
            {
               case EmergencyConstants.EMERGENCY_STATUS_STARTED:
                  addAnimation(animationForEmergencyStarted);
                  break;
               case EmergencyConstants.EMERGENCY_INPROGRESS:
                  addAnimation(animationForEmergencyInProgress);
                  break;
               case EmergencyConstants.EMERGENCY_STATUS_SUCCESS:
                  addAnimation(animationForEmergencyReward);
                  break;
               default:
                  removeCurrentAnimation();
            }
         }
      }
   }
}

