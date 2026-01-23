package net.bigpoint.cityrama.controller.applicationModes.normal
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOverForNormalCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOverForNormalCommand()
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
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc5_:BillboardObject = null;
         var _loc6_:BoulderFieldObject = null;
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc4_:FieldInfoLayerProxy = FieldInfoLayerProxy(facade.retrieveProxy(FieldInfoLayerProxy.NAME));
         if(_loc8_)
         {
            §§push(_loc3_.rollOverObject);
            if(!_loc7_)
            {
               §§push(§§pop() is ClientFieldObject);
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        §§push(_loc3_.rollOverObject);
                        if(_loc8_)
                        {
                           §§push((§§pop() as ClientFieldObject).fieldMatrixObject3dVo is PlayfieldSwitchFieldObjectVo);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    §§push(_loc3_.rollOverObject);
                                    if(!(_loc7_ && Boolean(_loc3_)))
                                    {
                                       addr00c8:
                                       §§pop().invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL);
                                       if(_loc8_ || Boolean(_loc3_))
                                       {
                                          §§goto(addr00e0);
                                       }
                                       else
                                       {
                                          addr00ef:
                                          §§push(_loc3_.rollOverObject);
                                          if(!_loc7_)
                                          {
                                             §§goto(addr0109);
                                          }
                                       }
                                    }
                                    §§goto(addr0111);
                                 }
                              }
                              §§goto(addr00e0);
                           }
                           §§goto(addr0109);
                        }
                        §§goto(addr0111);
                     }
                     §§goto(addr010d);
                  }
                  §§goto(addr00ef);
               }
               addr0109:
               if(§§pop() is BillboardObject)
               {
                  addr0111:
                  addr010d:
                  _loc5_ = _loc3_.rollOverObject as BillboardObject;
                  §§push(_loc5_ is BoulderFieldObject);
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc7_ && Boolean(param1)))
                        {
                           _loc6_ = _loc5_ as BoulderFieldObject;
                           _loc6_.invalidateHighlightManager(ApplicationModeProxy.MODE_DESTROY);
                           if(!_loc7_)
                           {
                              sendNotification(ApplicationNotificationConstants.APPLICATION_CHANGE_CURSOR,ApplicationModeProxy.MODE_DESTROY);
                              if(_loc8_ || _loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc8_)
                                    {
                                       addr017a:
                                       _loc4_.interactiveObject = _loc6_ as IInteraction;
                                    }
                                 }
                              }
                              §§goto(addr0221);
                           }
                           §§goto(addr017a);
                        }
                        else
                        {
                           addr019d:
                           §§push(_loc2_);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              addr01ac:
                              if(!§§pop())
                              {
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    §§push(_loc5_ is ActivatorFieldObject);
                                    if(!_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc8_ || Boolean(this))
                                          {
                                             addr01ef:
                                             addr01dc:
                                             if(_loc5_ is TownHallFieldObject)
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr01f9:
                                                   _loc4_.interactiveObject = _loc5_ as IInteraction;
                                                   if(_loc8_ || Boolean(param1))
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr0221);
                                          }
                                          §§goto(addr01f9);
                                       }
                                       else
                                       {
                                          _loc4_.interactiveObject = _loc5_ as IInteraction;
                                       }
                                       §§goto(addr0221);
                                    }
                                    §§goto(addr01ef);
                                 }
                                 §§goto(addr01dc);
                              }
                              §§goto(addr0221);
                           }
                           §§goto(addr01ef);
                        }
                     }
                     else
                     {
                        _loc3_.rollOverObject.invalidateHighlightManager(ApplicationModeProxy.MODE_NORMAL);
                        if(_loc8_)
                        {
                           §§goto(addr019d);
                        }
                     }
                     §§goto(addr01f9);
                  }
                  §§goto(addr01ac);
               }
               addr0221:
               return;
            }
            §§goto(addr00c8);
         }
         addr00e0:
      }
   }
}

