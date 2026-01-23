package net.bigpoint.cityrama.controller.applicationModes.move
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOverForMoveCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOverForMoveCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(_loc2_.rollOverObject is BillboardObject)
         {
            if((_loc2_.rollOverObject as BillboardObject).billboardObjectVo.configPlayfieldItemVo.moveable)
            {
               _loc2_.rollOverObject.invalidateHighlightManager(ApplicationModeProxy.MODE_MOVE);
            }
         }
         else if(_loc2_.rollOverObject is IPlaneObject)
         {
            if((_loc2_.rollOverObject as IPlaneObject).objectVo.configPlayfieldItemVo.moveable)
            {
               TweenMax.to((_loc2_.rollOverObject as IPlaneObject).container,0,{"colorTransform":{
                  "tint":255,
                  "tintAmount":0.5
               }});
            }
         }
      }
   }
}

