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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc2_:IEmergencyInfrastructureVO = null;
         var _loc7_:FieldBuildProxy = null;
         var _loc8_:FieldMoveProxy = null;
         var _loc3_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         var _loc9_:* = _loc3_.mode;
         if(_loc11_ || Boolean(this))
         {
            §§push(ApplicationModeProxy.MODE_BUILD);
            if(!_loc10_)
            {
               §§push(_loc9_);
               if(!_loc10_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc11_)
                     {
                        addr010d:
                        §§push(0);
                        if(_loc11_)
                        {
                        }
                     }
                     else
                     {
                        addr0125:
                        §§push(1);
                        if(_loc11_ || Boolean(_loc2_))
                        {
                        }
                     }
                     §§goto(addr0145);
                  }
                  else
                  {
                     §§goto(addr0121);
                  }
               }
               addr0121:
               §§goto(addr011f);
            }
            addr011f:
            if(ApplicationModeProxy.MODE_MOVE === _loc9_)
            {
               §§goto(addr0125);
            }
            else
            {
               §§push(2);
            }
            addr0145:
            switch(§§pop())
            {
               case 0:
                  _loc7_ = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
                  §§push(_loc7_.billboardObjectToAdd);
                  if(!_loc10_)
                  {
                     if(!(§§pop() is IEmergencyInfrastructure))
                     {
                        break;
                     }
                     if(_loc11_ || Boolean(this))
                     {
                        addr0077:
                        _loc2_ = (_loc7_.billboardObjectToAdd as IEmergencyInfrastructure).emergencyFieldObjectVo;
                        break;
                     }
                     §§goto(addr0169);
                  }
                  §§goto(addr0077);
               case 1:
                  _loc8_ = facade.retrieveProxy(FieldMoveProxy.NAME) as FieldMoveProxy;
                  §§push(_loc8_.objectToMove);
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     if(!(§§pop() is IEmergencyInfrastructure))
                     {
                        break;
                     }
                     §§push(_loc8_.objectToMove);
                  }
                  _loc2_ = (§§pop() as IEmergencyInfrastructure).emergencyFieldObjectVo;
                  break;
               default:
                  return;
            }
            if(_loc2_ == null)
            {
               if(_loc11_ || Boolean(this))
               {
                  addr0169:
                  return;
               }
            }
            var _loc4_:PlayfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
            var _loc5_:Point = _loc4_.mouseMatrixPoint;
            var _loc6_:SecurityGradeHeatMapMediator = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
            _loc6_.updateSingleGradeProviderVisual(_loc5_,_loc2_.objectSize,_loc2_.listOfModifiedGrades,true);
            return;
         }
         §§goto(addr010d);
      }
   }
}

