package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOverForDestroyCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOverForDestroyCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc3_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         _loc3_.itemGridVisiblity = false;
         sendNotification(ApplicationNotificationConstants.GROUND_ITEM_GRID_VISIBILITY_CHANGED);
         if(_loc2_.rollOverObject is BillboardObject)
         {
            if(!(_loc2_.rollOverObject is ExpansionFieldObject))
            {
               _loc2_.rollOverObject.invalidateHighlightManager(ApplicationModeProxy.MODE_DESTROY);
            }
         }
         else if(_loc2_.rollOverObject is IPlaneObject)
         {
            if((_loc2_.rollOverObject as IPlaneObject).objectVo.configPlayfieldItemVo.destroyable)
            {
               TweenMax.to((_loc2_.rollOverObject as IPlaneObject).container,0,{"colorTransform":{
                  "tint":16711680,
                  "tintAmount":0.5
               }});
            }
         }
      }
   }
}

