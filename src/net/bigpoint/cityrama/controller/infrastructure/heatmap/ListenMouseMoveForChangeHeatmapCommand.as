package net.bigpoint.cityrama.controller.infrastructure.heatmap
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.FieldMoveProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructureVO;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ListenMouseMoveForChangeHeatmapCommand extends SimpleCommand implements ICommand
   {
      
      public function ListenMouseMoveForChangeHeatmapCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:IEmergencyInfrastructureVO = null;
         var _loc7_:FieldBuildProxy = null;
         var _loc8_:FieldMoveProxy = null;
         var _loc3_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         switch(_loc3_.mode)
         {
            case ApplicationModeProxy.MODE_BUILD:
               _loc7_ = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
               if(_loc7_.billboardObjectToAdd is IEmergencyInfrastructure)
               {
                  _loc2_ = (_loc7_.billboardObjectToAdd as IEmergencyInfrastructure).emergencyFieldObjectVo;
               }
               break;
            case ApplicationModeProxy.MODE_MOVE:
               _loc8_ = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
               if(_loc8_.objectToMove is IEmergencyInfrastructure)
               {
                  _loc2_ = (_loc8_.objectToMove as IEmergencyInfrastructure).emergencyFieldObjectVo;
               }
               break;
            default:
               return;
         }
         if(_loc2_ == null)
         {
            return;
         }
         var _loc4_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
         var _loc5_:Point = _loc4_.mouseMatrixPoint;
         var _loc6_:SecurityGradeHeatMapMediator = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
         _loc6_.updateSingleGradeProviderVisual(_loc5_,_loc2_.objectSize,_loc2_.listOfModifiedGrades,true);
      }
   }
}

