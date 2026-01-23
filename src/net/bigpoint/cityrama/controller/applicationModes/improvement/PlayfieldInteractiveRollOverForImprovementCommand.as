package net.bigpoint.cityrama.controller.applicationModes.improvement
{
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IImprovable;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldInteractiveRollOverForImprovementCommand extends SimpleCommand
   {
      
      public function PlayfieldInteractiveRollOverForImprovementCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Boolean = param1.getBody() as Boolean;
         var _loc3_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         var _loc4_:FieldInfoLayerProxy = FieldInfoLayerProxy(facade.retrieveProxy(FieldInfoLayerProxy.NAME));
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            §§push(_loc3_.rollOverObject);
            if(!_loc6_)
            {
               §§push(§§pop() is BillboardObject);
               if(_loc5_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(_loc3_.rollOverObject);
                        if(!(_loc6_ && Boolean(param1)))
                        {
                           §§push((§§pop() as BillboardObject).billboardObjectVo);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(§§pop() is IImprovable);
                              if(_loc5_ || Boolean(param1))
                              {
                                 var _temp_6:* = §§pop();
                                 §§push(_temp_6);
                                 §§push(_temp_6);
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc5_ || Boolean(_loc3_))
                                       {
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             §§push(_loc3_.rollOverObject);
                                             if(!_loc6_)
                                             {
                                                §§push((§§pop() as BillboardObject).billboardObjectVo);
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop().isUnderConstruction());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(!§§pop());
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr0114:
                                                         var _temp_10:* = §§pop();
                                                         §§push(_temp_10);
                                                         §§push(_temp_10);
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  addr0135:
                                                                  §§pop();
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     §§push(_loc3_.rollOverObject);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr014e:
                                                                        §§push((§§pop() as BillboardObject).billboardObjectVo);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr0159:
                                                                           §§push(§§pop().hasEmergency());
                                                                           if(!(_loc6_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr016b:
                                                                              §§push(!§§pop());
                                                                              if(_loc5_ || Boolean(param1))
                                                                              {
                                                                                 addr017a:
                                                                                 var _temp_16:* = §§pop();
                                                                                 addr017b:
                                                                                 §§push(_temp_16);
                                                                                 if(_temp_16)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc5_ || Boolean(this))
                                                                                       {
                                                                                          addr0194:
                                                                                          §§push(_loc3_.rollOverObject);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr01a3:
                                                                                             addr019e:
                                                                                             §§push((§§pop() as BillboardObject).billboardObjectVo.isConnectedToStreet);
                                                                                             if(!(_loc6_ && Boolean(this)))
                                                                                             {
                                                                                                addr01b4:
                                                                                                §§push(§§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§goto(addr01bb);
                                                                                                }
                                                                                                §§goto(addr01ef);
                                                                                             }
                                                                                             addr01bb:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc5_ || Boolean(this))
                                                                                                {
                                                                                                   addr01de:
                                                                                                   _loc3_.rollOverObject.invalidateHighlightManager(ApplicationModeProxy.MODE_IMPROVEMENT);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr01ef:
                                                                                                      addr01ee:
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(!(_loc6_ && Boolean(this)))
                                                                                                         {
                                                                                                            addr0201:
                                                                                                            _loc4_.interactiveObject = _loc3_.rollOverObject;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr020a);
                                                                                          }
                                                                                          §§goto(addr01de);
                                                                                       }
                                                                                       §§goto(addr020a);
                                                                                    }
                                                                                    §§goto(addr01ef);
                                                                                 }
                                                                              }
                                                                              §§goto(addr01bb);
                                                                           }
                                                                           §§goto(addr01ef);
                                                                        }
                                                                        §§goto(addr01a3);
                                                                     }
                                                                     §§goto(addr01de);
                                                                  }
                                                                  §§goto(addr01ee);
                                                               }
                                                               §§goto(addr01b4);
                                                            }
                                                            §§goto(addr017a);
                                                         }
                                                         §§goto(addr017b);
                                                      }
                                                      §§goto(addr016b);
                                                   }
                                                   §§goto(addr01ef);
                                                }
                                                §§goto(addr0159);
                                             }
                                             §§goto(addr01de);
                                          }
                                          §§goto(addr0201);
                                       }
                                       §§goto(addr017a);
                                    }
                                    §§goto(addr0114);
                                 }
                                 §§goto(addr017b);
                              }
                              §§goto(addr0135);
                           }
                           §§goto(addr01a3);
                        }
                        §§goto(addr019e);
                     }
                     §§goto(addr0194);
                  }
                  addr020a:
                  return;
               }
               §§goto(addr01b4);
            }
            §§goto(addr014e);
         }
         §§goto(addr01ee);
      }
   }
}

