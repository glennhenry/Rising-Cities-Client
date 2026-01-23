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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
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
         if(_loc3_)
         {
            §§push(_loc2_.rollOverObject);
            if(!_loc4_)
            {
               §§push(§§pop() is BillboardObject);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && Boolean(this)))
                     {
                        §§push(_loc2_.rollOverObject);
                        if(_loc3_)
                        {
                           if((§§pop() as BillboardObject).billboardObjectVo.configPlayfieldItemVo.moveable)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 §§push(_loc2_.rollOverObject);
                                 if(!_loc4_)
                                 {
                                    addr008d:
                                    §§pop().invalidateHighlightManager(ApplicationModeProxy.MODE_MOVE);
                                    if(!_loc3_)
                                    {
                                       addr00ee:
                                       TweenMax.to((_loc2_.rollOverObject as IPlaneObject).container,0,{"colorTransform":{
                                          "tint":255,
                                          "tintAmount":0.5
                                       }});
                                    }
                                 }
                                 else
                                 {
                                    addr00d8:
                                    if((§§pop() as IPlaneObject).objectVo.configPlayfieldItemVo.moveable)
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr00ee);
                                       }
                                    }
                                 }
                                 §§goto(addr0113);
                              }
                              else
                              {
                                 addr00c8:
                                 §§push(_loc2_.rollOverObject);
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr0113);
                        }
                        §§goto(addr008d);
                     }
                     §§goto(addr0113);
                  }
                  else
                  {
                     §§push(_loc2_.rollOverObject);
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§goto(addr00b6);
                     }
                  }
                  §§goto(addr00d8);
               }
               addr00b6:
               if(§§pop() is IPlaneObject)
               {
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     §§goto(addr00c8);
                  }
               }
               §§goto(addr0113);
            }
            §§goto(addr00d8);
         }
         addr0113:
      }
   }
}

