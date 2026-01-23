package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOverForImprovementCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOverForImprovementCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc4_:FieldInfoLayerProxy = FieldInfoLayerProxy(facade.retrieveProxy(FieldInfoLayerProxy.NAME));
         if(_loc3_.rollOverObject is BillboardObject)
         {
            if((_loc3_.rollOverObject as BillboardObject).billboardObjectVo is IImprovable && !(_loc3_.rollOverObject as BillboardObject).billboardObjectVo.isUnderConstruction() && !(_loc3_.rollOverObject as BillboardObject).billboardObjectVo.hasEmergency() && (_loc3_.rollOverObject as BillboardObject).billboardObjectVo.isConnectedToStreet)
            {
               _loc3_.rollOverObject.invalidateHighlightManager(ApplicationModeProxy.MODE_IMPROVEMENT);
               if(!_loc2_)
               {
                  _loc4_.interactiveObject = _loc3_.rollOverObject;
               }
            }
         }
      }
   }
}

