package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOutForDestroyCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOutForDestroyCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(_loc2_.rollOutObject is BillboardObject)
         {
            _loc2_.rollOutObject.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
         }
         else if(_loc2_.rollOutObject is IPlaneObject)
         {
            TweenMax.to((_loc2_.rollOutObject as IPlaneObject).container,0,{"colorTransform":{
               "tint":0,
               "tintAmount":0
            }});
         }
      }
   }
}

