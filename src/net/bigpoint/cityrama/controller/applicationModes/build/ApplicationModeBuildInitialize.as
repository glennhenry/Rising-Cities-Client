package net.bigpoint.cityrama.controller.applicationModes.build
{
   import flash.display.Stage;
   import mx.core.FlexGlobals;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ApplicationModeBuildInitialize extends SimpleCommand
   {
      
      public function ApplicationModeBuildInitialize()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         if(_loc5_ || Boolean(this))
         {
            _loc2_.tileGridVisiblity = true;
            if(!_loc4_)
            {
               _loc2_.itemGridVisiblity = false;
               if(_loc5_)
               {
                  if(facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy == null)
                  {
                     if(_loc5_)
                     {
                        addr0067:
                        facade.registerProxy(new FieldBuildProxy());
                        if(_loc5_)
                        {
                           facade.registerCommand(ApplicationNotificationConstants.FIELD_CLICK,FieldClickForBuildCommand);
                           addr007a:
                           if(!_loc4_)
                           {
                              facade.registerCommand(ApplicationNotificationConstants.FIELD_MOUSE_MOVE,FieldMoveMouseForBuildCommand);
                              if(_loc5_ || Boolean(param1))
                              {
                                 facade.sendNotification(ApplicationNotificationConstants.REMOVE_ALL_URBIES);
                                 if(!_loc4_)
                                 {
                                    addr00c2:
                                    facade.sendNotification(ApplicationNotificationConstants.HIDE_ALL_ICONS);
                                 }
                                 §§goto(addr00cc);
                              }
                           }
                        }
                        §§goto(addr00c2);
                     }
                     addr00cc:
                     var _loc3_:Stage = FlexGlobals.topLevelApplication.stage as Stage;
                     if(!_loc4_)
                     {
                        _loc3_.focus = FlexGlobals.topLevelApplication.stage;
                        if(_loc5_ || Boolean(this))
                        {
                           _loc3_.stageFocusRect = false;
                           if(_loc5_)
                           {
                              facade.sendNotification(ApplicationNotificationConstants.POPUP_REMOVE_ALL);
                              if(!_loc4_)
                              {
                                 facade.sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PLAYFIELD_RESOURCES);
                              }
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr007a);
               }
               §§goto(addr0067);
            }
         }
         §§goto(addr007a);
      }
   }
}

