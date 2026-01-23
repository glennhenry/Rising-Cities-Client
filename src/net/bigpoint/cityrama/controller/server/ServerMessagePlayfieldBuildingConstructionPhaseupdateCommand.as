package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingConstructionPhaseupdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingConstructionPhaseupdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:Vector.<PhaseDTO> = null;
         var _loc6_:Object = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         if(_loc4_)
         {
            _loc5_ = new Vector.<PhaseDTO>();
            for each(_loc6_ in _loc2_.json.ph)
            {
               _loc5_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc6_,_loc4_.billboardObjectVo.configPlayfieldItemVo));
            }
            _loc4_.billboardObjectVo.activePhases = _loc5_;
            _loc4_.invalidateEstablishedManager();
            if(_loc4_ is IBuildUpManagerImplementation)
            {
               (_loc4_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
            }
            _loc4_.invalidateIconStateManager(false);
         }
         sendNotification(ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED);
      }
   }
}

