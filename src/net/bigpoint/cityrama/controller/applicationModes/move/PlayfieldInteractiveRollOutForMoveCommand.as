package net.bigpoint.cityrama.controller.applicationModes.move
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOutForMoveCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOutForMoveCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(!_loc3_)
         {
            §§push(_loc2_.rollOutObject);
            if(_loc4_)
            {
               §§push(§§pop() is BillboardObject);
               if(!(_loc3_ && Boolean(param1)))
               {
                  if(§§pop())
                  {
                     if(_loc4_ || Boolean(this))
                     {
                        §§push(_loc2_.rollOutObject);
                        if(!_loc3_)
                        {
                           §§pop().invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
                           if(!(_loc4_ || Boolean(this)))
                           {
                              addr00ac:
                              TweenMax.to((_loc2_.rollOutObject as IPlaneObject).container,0,{"colorTransform":{
                                 "tint":255,
                                 "tintAmount":0
                              }});
                           }
                        }
                        else
                        {
                           addr009e:
                           addr00a2:
                           if(§§pop() is IPlaneObject)
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr00ac);
                              }
                           }
                        }
                     }
                     return;
                  }
                  §§push(_loc2_.rollOutObject);
                  §§goto(addr009e);
               }
               §§goto(addr00a2);
            }
            §§goto(addr009e);
         }
         §§goto(addr00ac);
      }
   }
}

