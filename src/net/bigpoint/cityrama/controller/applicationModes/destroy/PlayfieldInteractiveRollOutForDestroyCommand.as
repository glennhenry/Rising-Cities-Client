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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(!_loc4_)
         {
            §§push(_loc2_.rollOutObject);
            if(!_loc4_)
            {
               §§push(§§pop() is BillboardObject);
               if(!(_loc4_ && Boolean(this)))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        §§push(_loc2_.rollOutObject);
                        if(_loc3_)
                        {
                           addr0072:
                           §§pop().invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL,false);
                           if(!(_loc3_ || _loc3_))
                           {
                              addr00ac:
                              TweenMax.to((_loc2_.rollOutObject as IPlaneObject).container,0,{"colorTransform":{
                                 "tint":0,
                                 "tintAmount":0
                              }});
                           }
                        }
                        else
                        {
                           addr009f:
                           addr00a3:
                           if(§§pop() is IPlaneObject)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr00ac);
                              }
                           }
                        }
                     }
                     return;
                  }
                  §§push(_loc2_.rollOutObject);
                  §§goto(addr009f);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0072);
         }
         §§goto(addr00ac);
      }
   }
}

