package net.bigpoint.cityrama.view.field
{
   import flash.display.Sprite;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.dropIcons.vo.DropIconVO;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.view.common.components.BriskMCDynaLib;
   import net.bigpoint.cityrama.view.common.events.BriskMCDynaLibEvent;
   import net.bigpoint.cityrama.view.field.strategys.DropIconAnimationEvent;
   import net.bigpoint.cityrama.view.field.strategys.DropIconIsoAnimationStrategyHQ;
   import net.bigpoint.cityrama.view.field.strategys.DropIconIsoAnimationStrategyLQ;
   import net.bigpoint.cityrama.view.field.strategys.IDropIconAnimationStrategy;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ViewForegroundMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ViewForegroundMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || ViewForegroundMediator)
      {
         NAME = "ViewForegroundMediator";
      }
      
      private var _dropIconAnimationStrategy:IDropIconAnimationStrategy;
      
      private var _optionsettings:OptionsGlobalVariables;
      
      private var _animationLoader:BriskMCDynaLib;
      
      private var _infoLayerProxy:FieldInfoLayerProxy;
      
      public function ViewForegroundMediator(param1:String, param2:Sprite)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(param2)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._optionsettings = OptionsGlobalVariables.getInstance();
            if(_loc1_)
            {
               if(this._optionsettings.highQuality)
               {
                  if(_loc1_)
                  {
                     this._dropIconAnimationStrategy = new DropIconIsoAnimationStrategyHQ();
                     if(_loc1_)
                     {
                        §§push(this._dropIconAnimationStrategy);
                        if(!_loc2_)
                        {
                           §§pop().addEventListener(this._dropIconAnimationStrategy.finishEvent.type,this.onDropComplete);
                           if(_loc1_ || _loc2_)
                           {
                           }
                           addr0093:
                           §§push(this._dropIconAnimationStrategy);
                        }
                        §§pop().prepare(facade);
                        if(_loc1_ || Boolean(this))
                        {
                           this._infoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
                        }
                     }
                  }
               }
               else
               {
                  this._dropIconAnimationStrategy = new DropIconIsoAnimationStrategyLQ();
                  if(!_loc2_)
                  {
                     §§goto(addr0093);
                  }
               }
               §§goto(addr00bc);
            }
            §§goto(addr0093);
         }
         addr00bc:
      }
      
      private function onDropComplete(param1:DropIconAnimationEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            sendNotification(ApplicationNotificationConstants.DROPICON_HANDLE_2D_LAYER_DROP,param1.data);
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.ISOVIEW_DROPICON_DROP,ApplicationNotificationConstants.QUALITY_CHANGED,ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_ANIMATION];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:Sprite = null;
         var _loc4_:DropIconVO = null;
         §§push(param1.getName());
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc5_:* = _loc2_;
         if(_loc6_)
         {
            §§push(ApplicationNotificationConstants.ISOVIEW_DROPICON_DROP);
            if(_loc6_ || Boolean(param1))
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(0);
                        if(_loc7_)
                        {
                        }
                     }
                     else
                     {
                        addr04c5:
                        §§push(2);
                        if(_loc7_)
                        {
                        }
                     }
                     §§goto(addr04dd);
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.QUALITY_CHANGED);
                     if(!_loc7_)
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && _loc2_))
                        {
                           addr0488:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && Boolean(this)))
                              {
                                 §§push(1);
                                 if(_loc6_ || Boolean(_loc3_))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr04c5);
                              }
                              §§goto(addr04dd);
                           }
                           else
                           {
                              §§goto(addr04c1);
                           }
                        }
                        addr04c1:
                     }
                     §§goto(addr04bf);
                  }
               }
               §§goto(addr0488);
            }
            addr04bf:
            if(ApplicationNotificationConstants.SHOW_RENTCOLLECTOR_ANIMATION === _loc5_)
            {
               §§goto(addr04c5);
            }
            else
            {
               §§push(3);
            }
            addr04dd:
            switch(§§pop())
            {
               case 0:
                  _loc3_ = param1.getBody().presentation as Sprite;
                  _loc4_ = param1.getBody().data as DropIconVO;
                  if(!(_loc6_ || _loc2_))
                  {
                     break;
                  }
                  this.component.addChild(_loc3_);
                  if(!_loc7_)
                  {
                     §§push(this._dropIconAnimationStrategy);
                     if(_loc6_)
                     {
                        §§pop().drop(_loc3_,_loc4_);
                        if(_loc6_)
                        {
                           break;
                        }
                        addr03f3:
                        §§push(this._animationLoader);
                        if(_loc6_)
                        {
                           §§pop().forceExternalCreation();
                           if(_loc6_ || Boolean(_loc3_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr0417:
                           if(!§§pop().movieClip)
                           {
                              break;
                           }
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                     }
                     else
                     {
                        addr032f:
                        §§pop().prepare(facade);
                        if(!(_loc7_ && Boolean(this)))
                        {
                           break;
                        }
                        addr037b:
                        §§push(this._animationLoader);
                        if(!_loc7_)
                        {
                           §§pop().addEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initRentCollectorAnimation);
                           if(_loc6_ || Boolean(param1))
                           {
                              addr03a1:
                              §§push(this._animationLoader);
                              if(_loc6_)
                              {
                                 addr03ab:
                                 §§push("harvesthelper_rent_animation");
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    §§pop().dynaMCSourceName = §§pop();
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       addr03ce:
                                       §§push(this._animationLoader);
                                       if(!(_loc7_ && Boolean(this)))
                                       {
                                          addr03e3:
                                          §§pop().dynaLibName = "gui_production_animation";
                                          addr03e0:
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             §§goto(addr03f3);
                                          }
                                          addr0424:
                                          this.createRentCollectorAnimation();
                                          break;
                                       }
                                       §§goto(addr0417);
                                    }
                                    §§goto(addr03f3);
                                 }
                                 §§goto(addr03e3);
                              }
                              §§goto(addr03e0);
                           }
                           §§goto(addr03ce);
                        }
                        §§goto(addr03e0);
                     }
                     §§goto(addr0424);
                  }
                  else
                  {
                     addr01c9:
                     §§push(this._dropIconAnimationStrategy);
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§push(this._dropIconAnimationStrategy);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           §§push(§§pop().finishEvent);
                           if(!(_loc7_ && Boolean(param1)))
                           {
                              addr01fe:
                              §§pop().addEventListener(§§pop().type,this.onDropComplete);
                              if(_loc7_ && Boolean(this))
                              {
                                 break;
                              }
                              §§push(this._dropIconAnimationStrategy);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§pop().prepare(facade);
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 §§goto(addr03ce);
                              }
                              else
                              {
                                 §§goto(addr032f);
                              }
                              §§goto(addr03e0);
                           }
                           else
                           {
                              addr030a:
                              §§pop().removeEventListener(§§pop().type,this.onDropComplete);
                              if(!_loc7_)
                              {
                                 addr031a:
                                 this._dropIconAnimationStrategy = new DropIconIsoAnimationStrategyLQ();
                                 if(!_loc7_)
                                 {
                                    addr032b:
                                    §§goto(addr032f);
                                    §§push(this._dropIconAnimationStrategy);
                                 }
                              }
                           }
                           §§goto(addr03f3);
                        }
                        else
                        {
                           addr02c8:
                           §§push(§§pop().finishEvent);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              addr02d9:
                              if(§§pop().hasEventListener(§§pop().type))
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(this._dropIconAnimationStrategy);
                                    if(_loc6_ || Boolean(_loc3_))
                                    {
                                       addr0307:
                                       addr0303:
                                       §§goto(addr030a);
                                       §§push(this._dropIconAnimationStrategy.finishEvent);
                                    }
                                    §§goto(addr032f);
                                 }
                                 §§goto(addr032b);
                              }
                              §§goto(addr031a);
                           }
                        }
                        §§goto(addr030a);
                     }
                     else
                     {
                        addr02be:
                        §§push(this._dropIconAnimationStrategy);
                        if(_loc6_)
                        {
                           §§goto(addr02c8);
                        }
                     }
                     §§goto(addr0307);
                  }
                  break;
               case 1:
                  §§push(this._optionsettings.highQuality);
                  if(!_loc7_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || Boolean(this))
                        {
                           §§push(this._dropIconAnimationStrategy);
                           if(_loc6_ || _loc2_)
                           {
                              §§push(§§pop() is DropIconIsoAnimationStrategyLQ);
                              if(!_loc7_)
                              {
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 if(!_loc7_)
                                 {
                                    §§push(this._dropIconAnimationStrategy);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop().finishEvent);
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          §§push(null);
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc6_ || Boolean(_loc3_))
                                             {
                                                addr0110:
                                                §§push(!§§pop());
                                                if(!_loc7_)
                                                {
                                                   var _temp_24:* = §§pop();
                                                   §§push(_temp_24);
                                                   §§push(_temp_24);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc7_ && Boolean(this)))
                                                         {
                                                            §§pop();
                                                            if(_loc6_)
                                                            {
                                                               §§push(this._dropIconAnimationStrategy);
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(this._dropIconAnimationStrategy);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop().finishEvent);
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §§push(Boolean(§§pop().hasEventListener(§§pop().type)));
                                                                        if(_loc6_)
                                                                        {
                                                                           addr0171:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(this._dropIconAnimationStrategy);
                                                                                 if(_loc6_ || Boolean(_loc3_))
                                                                                 {
                                                                                    §§push(this._dropIconAnimationStrategy);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr0197:
                                                                                       §§push(§§pop().finishEvent);
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§pop().removeEventListener(§§pop().type,this.onDropComplete);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr01b0:
                                                                                             this._dropIconAnimationStrategy = new DropIconIsoAnimationStrategyHQ();
                                                                                             if(!(_loc7_ && Boolean(param1)))
                                                                                             {
                                                                                                §§goto(addr01c9);
                                                                                             }
                                                                                             §§goto(addr03a1);
                                                                                          }
                                                                                          §§goto(addr0424);
                                                                                       }
                                                                                       §§goto(addr01fe);
                                                                                    }
                                                                                    §§goto(addr0307);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr025c:
                                                                                    addr025b:
                                                                                    addr024a:
                                                                                    §§push(§§pop().finishEvent == null);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc6_ || Boolean(param1))
                                                                                       {
                                                                                          addr0272:
                                                                                          var _temp_31:* = §§pop();
                                                                                          addr0273:
                                                                                          §§push(_temp_31);
                                                                                          if(_temp_31)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr027d:
                                                                                                §§pop();
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(this._dropIconAnimationStrategy);
                                                                                                   if(!(_loc7_ && Boolean(this)))
                                                                                                   {
                                                                                                      addr029a:
                                                                                                      if(!(§§pop() is DropIconIsoAnimationStrategyHQ))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!(_loc7_ && Boolean(_loc3_)))
                                                                                                      {
                                                                                                         §§push(this._dropIconAnimationStrategy);
                                                                                                         if(_loc6_ || Boolean(_loc3_))
                                                                                                         {
                                                                                                            §§goto(addr02be);
                                                                                                         }
                                                                                                         §§goto(addr032f);
                                                                                                      }
                                                                                                      §§goto(addr037b);
                                                                                                   }
                                                                                                   §§goto(addr02be);
                                                                                                }
                                                                                                §§goto(addr037b);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr029a);
                                                                                    }
                                                                                    §§goto(addr027d);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0364:
                                                                                 this._animationLoader = new BriskMCDynaLib();
                                                                                 if(_loc7_ && Boolean(this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr037b);
                                                                           }
                                                                           §§goto(addr01b0);
                                                                        }
                                                                        §§goto(addr0272);
                                                                     }
                                                                     §§goto(addr02d9);
                                                                  }
                                                                  §§goto(addr0197);
                                                               }
                                                               §§goto(addr02be);
                                                            }
                                                            §§goto(addr037b);
                                                         }
                                                      }
                                                      §§goto(addr0171);
                                                   }
                                                   §§goto(addr0273);
                                                }
                                                §§goto(addr0171);
                                             }
                                             §§goto(addr027d);
                                          }
                                          §§goto(addr025c);
                                       }
                                       §§goto(addr025b);
                                    }
                                    §§goto(addr0303);
                                 }
                                 §§goto(addr032b);
                              }
                              §§goto(addr027d);
                           }
                           §§goto(addr032f);
                        }
                        §§goto(addr037b);
                     }
                     else
                     {
                        §§push(this._dropIconAnimationStrategy);
                        if(_loc6_ || Boolean(_loc3_))
                        {
                           §§goto(addr024a);
                        }
                     }
                     §§goto(addr0303);
                  }
                  §§goto(addr0110);
               case 2:
                  §§push(this._animationLoader);
                  if(_loc6_)
                  {
                     if(!§§pop())
                     {
                        if(_loc6_ || _loc2_)
                        {
                           §§goto(addr0364);
                        }
                        §§goto(addr037b);
                     }
                     else
                     {
                        §§push(this._animationLoader);
                     }
                     §§goto(addr0417);
                  }
                  §§goto(addr03ab);
            }
            return;
         }
         §§goto(addr04c5);
      }
      
      private function initRentCollectorAnimation(param1:BriskMCDynaLibEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this._animationLoader);
            if(_loc2_ || Boolean(this))
            {
               §§pop().removeEventListener(BriskMCDynaLibEvent.LOAD_COMPLETE,this.initRentCollectorAnimation);
               if(!_loc3_)
               {
                  addr0062:
                  if(this._animationLoader.movieClip)
                  {
                     if(_loc2_ || Boolean(this))
                     {
                        addr0076:
                        this.createRentCollectorAnimation();
                     }
                  }
               }
               return;
            }
            §§goto(addr0062);
         }
         §§goto(addr0076);
      }
      
      private function createRentCollectorAnimation() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:BitmapClip = new BitmapClip(this._animationLoader.movieClip,"harvesthelper_rent_animation",20,true);
         if(_loc3_ || _loc2_)
         {
            _loc1_.x = this._infoLayerProxy.isoView.currentX;
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§goto(addr005e);
            }
            §§goto(addr007c);
         }
         addr005e:
         _loc1_.y = this._infoLayerProxy.isoView.currentY;
         if(!_loc2_)
         {
            addr007c:
            _loc1_.removeAfterPlay = true;
            if(_loc3_ || Boolean(_loc1_))
            {
               §§goto(addr008e);
            }
            §§goto(addr00a4);
         }
         addr008e:
         this.component.addChild(_loc1_);
         if(!(_loc2_ && _loc2_))
         {
            addr00a4:
            _loc1_.play();
         }
      }
      
      protected function get component() : Sprite
      {
         return viewComponent as Sprite;
      }
   }
}

