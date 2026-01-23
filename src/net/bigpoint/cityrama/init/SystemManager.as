package net.bigpoint.cityrama.init
{
   import flash.display.Stage;
   import flash.events.Event;
   import mx.core.mx_internal;
   import mx.managers.SystemManager;
   import net.bigpoint.cityrama.init.event.SystemManagerEvent;
   
   use namespace mx_internal;
   
   public class SystemManager extends mx.managers.SystemManager implements ISystemManager
   {
      
      public static var rawStage:Stage;
      
      protected var _resumable:Boolean;
      
      public function SystemManager()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
            if(_loc1_ || _loc1_)
            {
               addr0037:
               rawStage = this.stage;
            }
            return;
         }
         §§goto(addr0037);
      }
      
      override mx_internal function docFrameHandler(param1:Event = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(this._resumable)
            {
               if(!_loc3_)
               {
                  mx_internal::kickOff();
               }
            }
         }
      }
      
      override mx_internal function preloader_completeHandler(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            mx_internal::preloader.removeEventListener(Event.COMPLETE,this.mx_internal::preloader_completeHandler);
            if(!(_loc2_ && Boolean(this)))
            {
               mx_internal::preloader.dispatchEvent(new SystemManagerEvent(this));
            }
         }
      }
      
      public function resumeNextFrame() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(currentFrame >= 2)
            {
               if(_loc1_)
               {
                  this._resumable = true;
                  if(_loc1_)
                  {
                     addr002d:
                     mx_internal::kickOff();
                  }
                  §§goto(addr0034);
               }
               §§goto(addr002d);
            }
         }
         addr0034:
      }
   }
}

