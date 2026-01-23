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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc3_:GridProxy = facade.retrieveProxy(GridProxy.NAME) as GridProxy;
         if(_loc5_ || Boolean(_loc3_))
         {
            _loc3_.itemGridVisiblity = false;
            if(!(_loc4_ && Boolean(param1)))
            {
               sendNotification(ApplicationNotificationConstants.GROUND_ITEM_GRID_VISIBILITY_CHANGED);
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  §§push(_loc2_.rollOverObject);
                  if(_loc5_)
                  {
                     §§push(§§pop() is BillboardObject);
                     if(_loc5_ || Boolean(_loc2_))
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(_loc2_.rollOverObject);
                              if(_loc5_)
                              {
                                 §§push(§§pop() is ExpansionFieldObject);
                                 if(_loc5_ || Boolean(param1))
                                 {
                                    addr00c4:
                                    if(!§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          addr00ce:
                                          §§push(_loc2_.rollOverObject);
                                          if(!_loc4_)
                                          {
                                             addr00d8:
                                             §§pop().invalidateHighlightManager(ApplicationModeProxy.MODE_DESTROY);
                                             if(!_loc5_)
                                             {
                                                addr011b:
                                                addr010c:
                                                if((_loc2_.rollOverObject as IPlaneObject).objectVo.configPlayfieldItemVo.destroyable)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      addr0132:
                                                      TweenMax.to((_loc2_.rollOverObject as IPlaneObject).container,0,{"colorTransform":{
                                                         "tint":16711680,
                                                         "tintAmount":0.5
                                                      }});
                                                   }
                                                }
                                             }
                                             §§goto(addr0156);
                                          }
                                          §§goto(addr011b);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr0102:
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr010c);
                                       }
                                       §§goto(addr0132);
                                    }
                                 }
                                 §§goto(addr0156);
                              }
                              else
                              {
                                 addr00fe:
                                 §§push(§§pop() is IPlaneObject);
                              }
                              §§goto(addr0102);
                           }
                           §§goto(addr0132);
                        }
                        else
                        {
                           §§push(_loc2_.rollOverObject);
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§goto(addr00fe);
                           }
                        }
                        §§goto(addr011b);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr00d8);
               }
            }
            §§goto(addr00ce);
         }
         addr0156:
      }
   }
}

