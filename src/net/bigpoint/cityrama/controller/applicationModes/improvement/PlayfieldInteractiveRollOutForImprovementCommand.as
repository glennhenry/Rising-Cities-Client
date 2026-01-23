package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.view.field.SecurityGradeHeatMapMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOutForImprovementCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOutForImprovementCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc3_:FieldInfoLayerProxy = FieldInfoLayerProxy(facade.retrieveProxy(FieldInfoLayerProxy.NAME));
         if(_loc5_ || Boolean(_loc2_))
         {
            _loc2_.rollOutObject.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
            if(_loc5_ || Boolean(param1))
            {
               addr0086:
               _loc3_.interactiveObject = null;
            }
            var _loc4_:SecurityGradeHeatMapMediator = facade.retrieveMediator(SecurityGradeHeatMapMediator.NAME) as SecurityGradeHeatMapMediator;
            _loc4_.hideRangeRect();
            return;
         }
         §§goto(addr0086);
      }
   }
}

