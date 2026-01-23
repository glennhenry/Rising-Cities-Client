package net.bigpoint.cityrama.view.mainMenu
{
   import flash.events.Event;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.ViewmodeGroupComponent;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class ViewModeMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "ViewModeMenuMediator";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc2_)
      {
         NAME = "ViewModeMenuMediator";
      }
      
      private var _soundProxy:SoundProxy;
      
      private var _cookieProxy:LocalStorageProxy;
      
      public function ViewModeMenuMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.onRegister();
            if(_loc1_ || _loc1_)
            {
               this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
               addr0039:
               if(_loc1_)
               {
                  §§goto(addr005a);
               }
               §§goto(addr0079);
            }
            addr005a:
            this._cookieProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
            if(!(_loc2_ && _loc2_))
            {
               addr0079:
               this.setupListeners();
            }
            return;
         }
         §§goto(addr0039);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            super.onRemove();
            if(_loc1_)
            {
               addr0027:
               this.removeListeners();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      override public function getMediatorName() : String
      {
         return ViewModeMenuMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _loc2_:* = param1.getName();
         switch(0)
         {
         }
      }
      
      public function get component() : ViewmodeGroupComponent
      {
         return super.viewComponent as ViewmodeGroupComponent;
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§push(ViewmodeGroupComponent.EVENT_FIRE_SELECTED);
               if(_loc2_)
               {
                  §§pop().addEventListener(§§pop(),this.heatmapSelectionChanged);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.component);
                     if(_loc2_ || Boolean(this))
                     {
                        §§push(ViewmodeGroupComponent.EVENT_HOSPITAL_SELECTED);
                        if(_loc2_)
                        {
                           §§pop().addEventListener(§§pop(),this.heatmapSelectionChanged);
                           if(!_loc1_)
                           {
                              addr0076:
                              §§push(this.component);
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr0090:
                                 §§push(ViewmodeGroupComponent.EVENT_NONE_SELECTED);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr00a3:
                                    §§pop().addEventListener(§§pop(),this.heatmapSelectionChanged);
                                    if(_loc2_)
                                    {
                                       addr00b8:
                                       this.component.addEventListener(ViewmodeGroupComponent.EVENT_POLICE_SELECTED,this.heatmapSelectionChanged);
                                       addr00b2:
                                    }
                                    §§goto(addr00bf);
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00b2);
                           }
                           §§goto(addr00bf);
                        }
                        §§goto(addr00a3);
                     }
                     §§goto(addr0090);
                  }
                  §§goto(addr0076);
               }
               §§goto(addr00a3);
            }
            §§goto(addr0090);
         }
         addr00bf:
      }
      
      private function heatmapSelectionChanged(param1:Event) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:OptionsMenuMediator = facade.retrieveMediator(OptionsMenuMediator.NAME) as OptionsMenuMediator;
         var _loc3_:* = param1.type;
         if(_loc4_)
         {
            §§push(ViewmodeGroupComponent.EVENT_FIRE_SELECTED);
            if(_loc4_)
            {
               if(§§pop() === _loc3_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                     }
                  }
                  else
                  {
                     addr02cb:
                     §§push(2);
                     if(_loc5_ && Boolean(param1))
                     {
                     }
                  }
               }
               else
               {
                  §§push(ViewmodeGroupComponent.EVENT_HOSPITAL_SELECTED);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     addr0280:
                     if(§§pop() === _loc3_)
                     {
                        if(_loc4_ || Boolean(_loc2_))
                        {
                           §§push(1);
                           if(_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr02ea:
                           §§push(3);
                           if(_loc5_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(ViewmodeGroupComponent.EVENT_NONE_SELECTED);
                        if(_loc4_ || Boolean(this))
                        {
                           addr02b3:
                           if(§§pop() === _loc3_)
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr02cb);
                              }
                              else
                              {
                                 §§goto(addr02ea);
                              }
                           }
                           else
                           {
                              §§goto(addr02e5);
                           }
                           §§goto(addr02ea);
                        }
                        addr02e5:
                        if(ViewmodeGroupComponent.EVENT_POLICE_SELECTED === _loc3_)
                        {
                           §§goto(addr02ea);
                        }
                        else
                        {
                           §§push(4);
                        }
                     }
                     §§goto(addr0302);
                  }
                  §§goto(addr02b3);
               }
               addr0302:
               switch(§§pop())
               {
                  case 0:
                     §§push(_loc2_.component);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        if(!§§pop().subMenueBasement.selected)
                        {
                           if(!_loc5_)
                           {
                              §§push(_loc2_.component);
                              if(!(_loc5_ && Boolean(_loc2_)))
                              {
                                 §§pop().subMenueBasement.selected = true;
                                 if(_loc4_ || Boolean(_loc3_))
                                 {
                                    addr0081:
                                    sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ServerTagConstants.FIRE_DEPARTMENT);
                                    if(!(_loc5_ && Boolean(_loc3_)))
                                    {
                                       §§push(this._cookieProxy);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop().userdata);
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             §§push(ServerTagConstants.FIRE_DEPARTMENT);
                                             if(!_loc5_)
                                             {
                                                §§pop().lastViewedHeatMap = §§pop();
                                                if(!(_loc5_ && Boolean(_loc2_)))
                                                {
                                                   break;
                                                }
                                                addr0103:
                                                §§push(_loc2_.component);
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   §§pop().subMenueBasement.selected = true;
                                                   if(_loc4_ || Boolean(_loc3_))
                                                   {
                                                      addr0129:
                                                      sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ServerTagConstants.HOSPITAL);
                                                      if(!(_loc5_ && Boolean(this)))
                                                      {
                                                         §§push(this._cookieProxy);
                                                         if(_loc4_ || Boolean(this))
                                                         {
                                                            addr0165:
                                                            §§push(§§pop().userdata);
                                                            if(_loc4_)
                                                            {
                                                               addr016e:
                                                               §§push(ServerTagConstants.HOSPITAL);
                                                               if(_loc4_ || Boolean(this))
                                                               {
                                                                  addr0181:
                                                                  §§pop().lastViewedHeatMap = §§pop();
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr0213:
                                                               §§push(ServerTagConstants.POLICE_DEPARTMENT);
                                                            }
                                                            §§pop().lastViewedHeatMap = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               addr0221:
                                                               sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,ServerTagConstants.POLICE_DEPARTMENT);
                                                               if(_loc5_)
                                                               {
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         addr0210:
                                                         §§push(§§pop().userdata);
                                                         §§goto(addr0213);
                                                      }
                                                      else
                                                      {
                                                         addr01ff:
                                                         _loc2_.component.subMenueBasement.selected = true;
                                                         addr01fc:
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         addr020c:
                                                         §§push(this._cookieProxy);
                                                      }
                                                      §§goto(addr0210);
                                                   }
                                                   §§goto(addr020c);
                                                }
                                                else
                                                {
                                                   addr0198:
                                                   if(§§pop().subMenueBasement.selected)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc2_.component);
                                                      if(!_loc5_)
                                                      {
                                                         addr01b1:
                                                         §§pop().subMenueBasement.selected = false;
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         addr01be:
                                                         sendNotification(ApplicationNotificationConstants.HIDE_HEATMAP);
                                                         if(!(_loc5_ && Boolean(_loc3_)))
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr01fc);
                                                      }
                                                      §§goto(addr01ff);
                                                   }
                                                   §§goto(addr01be);
                                                }
                                             }
                                             §§goto(addr0181);
                                          }
                                          §§goto(addr016e);
                                       }
                                       §§goto(addr0165);
                                    }
                                    §§goto(addr0103);
                                 }
                                 §§goto(addr01fc);
                              }
                              else
                              {
                                 addr00eb:
                                 if(!§§pop().subMenueBasement.selected)
                                 {
                                    if(_loc5_ && Boolean(param1))
                                    {
                                       break;
                                    }
                                    §§goto(addr0103);
                                 }
                              }
                           }
                           §§goto(addr0129);
                        }
                        §§goto(addr0081);
                     }
                     §§goto(addr01b1);
                  case 1:
                     §§push(_loc2_.component);
                     if(_loc4_ || Boolean(_loc3_))
                     {
                        §§goto(addr00eb);
                     }
                     §§goto(addr01b1);
                  case 2:
                     §§push(_loc2_.component);
                     if(!_loc5_)
                     {
                        §§goto(addr0198);
                     }
                     else
                     {
                        addr01ec:
                        if(!§§pop().subMenueBasement.selected)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr01fc);
                           }
                           §§goto(addr0221);
                        }
                     }
                     §§goto(addr020c);
                  case 3:
                     §§push(_loc2_.component);
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        §§goto(addr01ec);
                     }
                     §§goto(addr01ff);
               }
               return;
            }
            §§goto(addr0280);
         }
         §§goto(addr02ea);
      }
      
      private function removeListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            §§push(this.component);
            if(_loc1_ || Boolean(this))
            {
               §§push(ViewmodeGroupComponent.EVENT_FIRE_SELECTED);
               if(!(_loc2_ && _loc2_))
               {
                  §§pop().removeEventListener(§§pop(),this.heatmapSelectionChanged);
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(this.component);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr0066:
                        §§push(ViewmodeGroupComponent.EVENT_HOSPITAL_SELECTED);
                        if(_loc1_ || _loc2_)
                        {
                           §§pop().removeEventListener(§§pop(),this.heatmapSelectionChanged);
                           if(!_loc2_)
                           {
                              addr0085:
                              §§push(this.component);
                              if(_loc1_ || Boolean(this))
                              {
                                 addr009f:
                                 §§push(ViewmodeGroupComponent.EVENT_NONE_SELECTED);
                                 if(_loc1_)
                                 {
                                    §§goto(addr00aa);
                                 }
                                 §§goto(addr00bf);
                              }
                              §§goto(addr00b9);
                           }
                           §§goto(addr00b6);
                        }
                        §§goto(addr00aa);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr00b6);
               }
               addr00aa:
               §§pop().removeEventListener(§§pop(),this.heatmapSelectionChanged);
               if(!_loc2_)
               {
                  addr00bf:
                  this.component.removeEventListener(ViewmodeGroupComponent.EVENT_POLICE_SELECTED,this.heatmapSelectionChanged);
                  addr00b9:
                  addr00b6:
               }
               return;
            }
            §§goto(addr0066);
         }
         §§goto(addr0085);
      }
   }
}

