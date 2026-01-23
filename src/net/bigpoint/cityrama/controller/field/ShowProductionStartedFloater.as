package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.ProductionFieldObjectVo;
   import net.bigpoint.cityrama.model.good.vo.ProductionGoodObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowProductionStartedFloater extends SimpleCommand implements ICommand
   {
      
      public function ShowProductionStartedFloater()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:ConfigPhaseDTO = null;
         var _loc9_:ConfigOutputDTO = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc11_:ConfigOutputDTO = null;
         var _loc2_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc3_:Object = param1.getBody();
         var _loc4_:ProductionFieldObjectVo = _loc3_.pro;
         var _loc5_:ProductionGoodObjectVo = _loc3_.good;
         var _loc6_:ProductionFieldObject = _loc2_.getBillboardById(_loc4_.buildingDTO.id) as ProductionFieldObject;
         if(_loc6_ != null && _loc5_ != null)
         {
            _loc7_ = null;
            for each(_loc8_ in _loc6_.billboardObjectVo.configPlayfieldItemVo.activePhases)
            {
               if(_loc8_.phaseType == ServerPhaseTypes.PRODUCTION)
               {
                  for each(_loc9_ in _loc8_.listEntryOutputs)
                  {
                     if(_loc9_.goodConfig)
                     {
                        if(_loc9_.goodConfig.id == _loc5_.config.id)
                        {
                           for each(_loc10_ in _loc6_.billboardObjectVo.configPlayfieldItemVo.activePhases)
                           {
                              if(_loc10_.phaseOrderId == _loc8_.phaseOrderId - 1)
                              {
                                 for each(_loc11_ in _loc10_.listEntryOutputs)
                                 {
                                    if(Boolean(_loc11_.resourceConfig) && _loc11_.resourceConfig.type == ServerResConst.RESOURCE_PRODUCTIONPOINTS)
                                    {
                                       _loc7_ = _loc10_;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc7_ != null)
                  {
                     (_loc6_ as BillboardObject).billboardObjectVo.informationFloaterPhase = _loc7_;
                     (_loc6_ as BillboardObject).invalidateInformationFloaterManager();
                     if(OptionsGlobalVariables.getInstance().showDropIcons)
                     {
                        if(_loc7_ != null)
                        {
                           facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                              "tO":_loc6_,
                              "cP":_loc7_
                           });
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

