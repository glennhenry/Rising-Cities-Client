package net.bigpoint.cityrama.model
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.menu.MenuNavigationConstants;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class ApplicationModeProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "ApplicationModeProxy";
      
      public static const MODE_NORMAL:String = "MODE_NORMAL";
      
      public static const MODE_BUILD:String = "MODE_BUILD";
      
      public static const MODE_DESTROY:String = "MODE_DESTROY";
      
      public static const MODE_MOVE:String = "MODE_MOVE";
      
      public static const MODE_IMPROVEMENT:String = "MODE_IMPROVEMENT";
      
      private var _mode:String;
      
      private var _oldMode:String;
      
      public function ApplicationModeProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      public function get mode() : String
      {
         return this._mode;
      }
      
      public function set mode(param1:String) : void
      {
         if(param1 == this._mode)
         {
            return;
         }
         this._oldMode = this._mode;
         this._mode = param1;
         sendNotification("APPLICATION_" + this._oldMode + "_DEINITIALIZE",{
            "oldMode":this._oldMode,
            "newMode":this._mode
         });
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         _loc2_.reset();
         sendNotification("APPLICATION_" + this._mode + "_INITIALIZE",{
            "oldMode":this._oldMode,
            "newMode":this._mode
         });
         sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,this._mode);
         sendNotification(ApplicationNotificationConstants.APPLICATION_MODE_NEW);
      }
      
      public function setSubNavigation(param1:String) : void
      {
         switch(param1)
         {
            case MenuNavigationConstants.SUB_CURSOR_NORMAL:
               this.mode = MODE_NORMAL;
               break;
            case MenuNavigationConstants.SUB_CURSOR_MOVE:
               this.mode = MODE_MOVE;
               break;
            case MenuNavigationConstants.SUB_CURSOR_DESTROY:
               this.mode = MODE_DESTROY;
         }
      }
      
      public function get oldMode() : String
      {
         return this._oldMode;
      }
   }
}

