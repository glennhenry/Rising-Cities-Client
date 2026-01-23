package net.bigpoint.cityrama.controller.residentialBook
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class HarvestBuildingCommand extends SimpleCommand implements ICommand
   {
      
      public function HarvestBuildingCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:PlayfieldObjectsProxy = null;
         var _loc4_:BillboardObject = null;
         var _loc5_:EventProxy = null;
         var _loc6_:PhaseDTO = null;
         var _loc7_:ConfigOutputDTO = null;
         var _loc2_:Number = param1.getBody() as Number;
         if(_loc2_)
         {
            _loc3_ = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
            _loc4_ = _loc3_.getBillboardById(_loc2_);
            if((Boolean(_loc4_)) && _loc4_.billboardObjectVo.isHarvestReady)
            {
               _loc5_ = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_HARVESTPHASE_PROCESS,{"vo":_loc4_.billboardObjectVo});
               if(_loc4_.billboardObjectVo is IEventDrop)
               {
                  if(_loc4_ is ProductionFieldObject && _loc5_.currentRunningEventQuestLocaleId != "")
                  {
                     for each(_loc6_ in _loc4_.billboardObjectVo.activePhases)
                     {
                        for each(_loc7_ in _loc6_.config.listEntryOutputs)
                        {
                           if(_loc7_.goodConfig != null && _loc7_.goodConfig.isEventGood)
                           {
                              (_loc4_.billboardObjectVo as IEventDrop).currentEventLocaleId = _loc5_.currentRunningEventQuestLocaleId;
                           }
                        }
                     }
                  }
                  else if(_loc4_ is ResidentialFieldObject && _loc5_.currentRunningEventQuestLocaleId != "")
                  {
                     (_loc4_.billboardObjectVo as IEventDrop).currentEventLocaleId = _loc5_.currentRunningEventQuestLocaleId;
                  }
               }
               sendNotification(ApplicationNotificationConstants.PREPARE_BILLBOARDOBJECT_FLOATERMANAGER,_loc4_);
               _loc4_.invalidateInformationFloaterManager();
               _loc4_.invalidateIconStateManager(true);
               _loc4_.billboardObjectVo.userInteractionLocked = true;
            }
         }
      }
   }
}

