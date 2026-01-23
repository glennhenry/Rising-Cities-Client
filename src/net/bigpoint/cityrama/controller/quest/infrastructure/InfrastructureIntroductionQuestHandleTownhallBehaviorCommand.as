package net.bigpoint.cityrama.controller.quest.infrastructure
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import com.greensock.TweenMax;
   import eDpLib.events.ProxyEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.EmergencyConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.emergencyTV.EmergencyTVProxy;
   import net.bigpoint.cityrama.model.emergencyTV.vo.TVShowVo;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.quest.QuestProxy;
   import net.bigpoint.cityrama.model.server.vo.server.player.QuestRewardInfoVo;
   import net.bigpoint.cityrama.view.emergencyTV.EmergencyTVMediator;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.field3d.interfaces.IObject3D;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class InfrastructureIntroductionQuestHandleTownhallBehaviorCommand extends SimpleCommand implements ICommand
   {
      
      private var _questProxy:QuestProxy;
      
      private var _playfieldObjectsProxy:PlayfieldObjectsProxy;
      
      private var _questId:Number;
      
      private var _done:Boolean;
      
      public function InfrastructureIntroductionQuestHandleTownhallBehaviorCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         this.prepareProxys();
         var _loc2_:String = param1.getBody().localeId as String;
         this._questId = param1.getBody().questId as Number;
         var _loc3_:ActivatorFieldObject = this._playfieldObjectsProxy.getCurrentActivatorFieldObject();
         if(_loc3_)
         {
            if(!(_loc3_ is TownHallFieldObject))
            {
               return;
            }
         }
         var _loc4_:TownHallFieldObject = this._playfieldObjectsProxy.getTownHall();
         if(_loc4_ == null)
         {
            TweenMax.delayedCall(1,facade.sendNotification,[param1.getName(),param1.getBody()]);
            return;
         }
         _loc4_.townHallFieldObjectVo.fakeAnimationForQuest = "";
         var _loc5_:EmergencyTVMediator = facade.retrieveMediator(EmergencyTVMediator.NAME) as EmergencyTVMediator;
         switch(_loc2_)
         {
            case "471":
               _loc4_.townHallFieldObjectVo.fakeAnimationForQuest = EmergencyConstants.EMERGENCY_STATUS_STARTED;
               _loc5_.setTVData(EmergencyTVProxy.getEmergencyTVVo(999,ServerTagConstants.FIRE_DEPARTMENT,999,TVShowVo.START,_loc4_.townHallFieldObjectVo.buildingDTO.id));
               _loc4_.townHallFieldObjectVo.hideIconsForMoveMode = true;
               break;
            case "473":
               _loc4_.townHallFieldObjectVo.fakeAnimationForQuest = EmergencyConstants.EMERGENCY_STATUS_STARTED;
               _loc5_.hide();
               break;
            case "474":
               TweenMax.delayedCall(3,this.completeIt,[_loc4_]);
               sendNotification(ApplicationNotificationConstants.SPAWN_EMERGENCY_CITIZEN);
               _loc4_.townHallFieldObjectVo.fakeAnimationForQuest = EmergencyConstants.EMERGENCY_INPROGRESS;
               _loc4_.townHallFieldObjectVo.hideIconsForMoveMode = true;
         }
         _loc4_.invalidateAnimationSlotManager();
         _loc4_.invalidateIconStateManager();
      }
      
      private function completeIt(param1:TownHallFieldObject) : void
      {
         param1.townHallFieldObjectVo.fakeAnimationForQuest = EmergencyConstants.EMERGENCY_STATUS_SUCCESS;
         param1.invalidateAnimationSlotManager();
         param1.addEventListener(MouseEvent.CLICK,this.onTownHallClick);
      }
      
      private function onTownHallClick(param1:ProxyEvent) : void
      {
         var _loc7_:QuestRewardInfoVo = null;
         if(this._done)
         {
            return;
         }
         this._done = true;
         var _loc2_:IObject3D = this._playfieldObjectsProxy.getTownHall();
         (_loc2_ as TownHallFieldObject).townHallFieldObjectVo.hideIconsForMoveMode = false;
         (_loc2_ as TownHallFieldObject).townHallFieldObjectVo.fakeAnimationForQuest = "";
         (_loc2_ as TownHallFieldObject).townHallFieldObjectVo.userInteractionLocked = false;
         (_loc2_ as TownHallFieldObject).invalidateIconStateManager();
         (_loc2_ as TownHallFieldObject).invalidateAnimationSlotManager();
         var _loc5_:Pt = IsoMath.isoToScreen(new Pt(_loc2_.x + _loc2_.width / 2,_loc2_.y + _loc2_.length / 2));
         var _loc6_:Point = new Point(_loc5_.x,_loc5_.y);
         for each(_loc7_ in this._questProxy.getQuestByID(this._questId).rewards)
         {
            if(_loc7_.type == ServerOutputConstants.GOOD)
            {
               var _loc3_:DropIconVO = new DropIconVO(_loc7_.questRewardVo.goodConfig.gfxId.toString(),_loc6_);
               TweenMax.delayedCall(0,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,null]);
               var _loc4_:Number = 0 + 0.1;
            }
            else if(_loc7_.type == ServerTagConstants.GOOD_KEY)
            {
               _loc3_ = new DropIconVO(_loc7_.type,_loc6_);
               TweenMax.delayedCall(0,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,null]);
               _loc4_ = 0 + 0.1;
            }
            else if(_loc7_.type == ServerOutputConstants.RESOURCE)
            {
               _loc3_ = new DropIconVO(_loc7_.type,_loc6_);
               TweenMax.delayedCall(0,facade.sendNotification,[ApplicationNotificationConstants.DROPICON_HANDLE_ISO_DROP,null]);
               _loc4_ = 0 + 0.1;
            }
         }
      }
      
      private function prepareProxys() : void
      {
         this._questProxy = facade.retrieveProxy(QuestProxy.NAME) as QuestProxy;
         this._playfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
      }
   }
}

