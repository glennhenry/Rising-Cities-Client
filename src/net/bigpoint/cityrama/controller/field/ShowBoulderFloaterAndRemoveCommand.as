package net.bigpoint.cityrama.controller.field
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowBoulderFloaterAndRemoveCommand extends SimpleCommand implements ICommand
   {
      
      private var _boulder:BoulderFieldObject;
      
      public function ShowBoulderFloaterAndRemoveCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:ConfigPhaseDTO = null;
         var _loc2_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         var _loc3_:Number = 0;
         this._boulder = param1.getBody() as BoulderFieldObject;
         this._boulder.billboardObjectVo.userInteractionLocked = true;
         if(this._boulder.boulderObjectVo.informationFloaterPhase != null && this._boulder.boulderObjectVo.informationFloaterPhase.listEntryOutputs.length > 0)
         {
            if(this._boulder.boulderObjectVo.isEventBoulder && this._boulder.boulderObjectVo is IEventDrop)
            {
               this._boulder.boulderObjectVo.currentEventLocaleId = _loc2_.currentRunningEventQuestLocaleId;
            }
            _loc4_ = new ConfigPhaseDTO({});
            _loc4_.listEntryOutputs = this._boulder.boulderObjectVo.informationFloaterPhase.listEntryOutputs;
            if(OptionsGlobalVariables.getInstance().showDropIcons)
            {
               facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                  "tO":this._boulder,
                  "cP":_loc4_
               });
            }
            if(OptionsGlobalVariables.getInstance().showFloater)
            {
               this._boulder.invalidateInformationFloaterManager();
            }
            if(OptionsGlobalVariables.getInstance().showFloater || OptionsGlobalVariables.getInstance().showDropIcons)
            {
               _loc3_ = _loc4_.listEntryOutputs.length;
               if(_loc3_ == 1)
               {
                  _loc3_ = 0.5;
               }
            }
            TweenMax.delayedCall(_loc3_,this.removeBoulder);
         }
      }
      
      private function removeBoulder() : void
      {
         var _loc1_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         _loc1_.removeGameObjectVofromMatrix(this._boulder.boulderObjectVo);
         sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,this._boulder);
      }
   }
}

