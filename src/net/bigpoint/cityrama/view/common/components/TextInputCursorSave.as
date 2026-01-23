package net.bigpoint.cityrama.view.common.components
{
   import flash.display.DisplayObject;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.ApplicationFacade;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.init.SystemManager;
   import net.bigpoint.cityrama.model.field.FieldCursorProxy;
   import spark.components.TextInput;
   
   public class TextInputCursorSave extends TextInput
   {
      
      private static var _skinParts:Object = {
         "textDisplay":false,
         "promptDisplay":false
      };
      
      private var _focusedIn:Boolean = false;
      
      private var _listenerAdded:Boolean = false;
      
      public function TextInputCursorSave()
      {
         super();
      }
      
      override protected function initializationComplete() : void
      {
         super.initializationComplete();
         if(!stage)
         {
            return;
         }
         if(!this._listenerAdded)
         {
            SystemManager.rawStage.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.system_mouseDownHandler,false,0,true);
            this.addEventListener(MouseEvent.MOUSE_OUT,this.bruteForceReset,false,0,true);
            this._listenerAdded = true;
            this._focusedIn = false;
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         super.removeEventListener(param1,param2,param3);
      }
      
      private function bruteForceReset(param1:MouseEvent) : void
      {
         ApplicationFacade.getInstance().sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,FieldCursorProxy.CURSOR_RESET);
      }
      
      private function system_mouseDownHandler(param1:MouseEvent) : void
      {
         if(!param1.target != this && !this.contains(param1.target as DisplayObject))
         {
            if(this._focusedIn && Boolean(stage))
            {
               if(stage)
               {
                  stage.focus = null;
               }
               ApplicationFacade.getInstance().sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,FieldCursorProxy.CURSOR_RESET);
               this._focusedIn = false;
            }
         }
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         super.focusInHandler(param1);
         this._focusedIn = true;
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         super.focusOutHandler(param1);
      }
   }
}

