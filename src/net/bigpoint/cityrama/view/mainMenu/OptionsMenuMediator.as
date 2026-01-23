package net.bigpoint.cityrama.view.mainMenu
{
   import flash.display.StageDisplayState;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.LocalStorage.LocalStorageProxy;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.view.mainMenu.ui.components.*;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   
   public class OptionsMenuMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "OptionsMenuMediator";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc1_)
      {
         NAME = "OptionsMenuMediator";
      }
      
      private var _optionsProxy:OptionsMenuProxy;
      
      private var _localStorageProxy:LocalStorageProxy;
      
      private var _layoutProxy:LayoutProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _basementViewProxy:BasementViewProxy;
      
      public function OptionsMenuMediator(param1:Object)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            super.onRegister();
            if(_loc2_)
            {
               this.setupListeners();
               if(!(_loc1_ && Boolean(this)))
               {
                  addr0045:
                  this.prepareProxies();
                  if(_loc2_ || _loc2_)
                  {
                     this.prepareInitValues();
                  }
               }
            }
            return;
         }
         §§goto(addr0045);
      }
      
      private function prepareProxies() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._optionsProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
            if(_loc2_ || _loc2_)
            {
               this._localStorageProxy = facade.retrieveProxy(LocalStorageProxy.NAME) as LocalStorageProxy;
               if(_loc2_ || _loc1_)
               {
                  this._layoutProxy = facade.retrieveProxy(LayoutProxy.NAME) as LayoutProxy;
                  if(_loc2_)
                  {
                     addr007f:
                     this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                     if(!_loc1_)
                     {
                        addr0096:
                        this._basementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
                     }
                  }
                  return;
               }
               §§goto(addr0096);
            }
         }
         §§goto(addr007f);
      }
      
      override public function onRemove() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super.onRemove();
            if(_loc1_)
            {
               this.removeListeners();
            }
         }
      }
      
      override public function getMediatorName() : String
      {
         return OptionsMenuMediator.NAME;
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.FIELD_ZOOMED,ApplicationNotificationConstants.RESET_BASE_MODE,ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1.getName();
         if(_loc3_ || Boolean(this))
         {
            §§push(ApplicationNotificationConstants.FIELD_ZOOMED);
            if(_loc3_ || Boolean(_loc2_))
            {
               §§push(_loc2_);
               if(_loc3_ || Boolean(this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr0162:
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr0196:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.RESET_BASE_MODE);
                     if(_loc3_)
                     {
                        addr0178:
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           addr017e:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr0196);
                              }
                              else
                              {
                                 addr01ac:
                                 §§push(2);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                 }
                              }
                              §§goto(addr01cb);
                           }
                           else
                           {
                              §§goto(addr01a8);
                           }
                        }
                        addr01a8:
                        §§goto(addr01a7);
                     }
                     addr01a7:
                     if(ApplicationNotificationConstants.LAYOUT_DISPLAYSTATE_CHANGED === _loc2_)
                     {
                        §§goto(addr01ac);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr01cb);
                  }
                  addr01cb:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(this.component);
                        if(_loc3_)
                        {
                           §§pop().subMenueZoom.selected = this._optionsProxy.getOptionNavigationPointByName(OptionsMenuNavigationConstants.TOGGLE_ZOOM).selected;
                           if(_loc4_ && _loc3_)
                           {
                           }
                           break;
                        }
                        addr0054:
                        §§pop().subMenueBasement.selected = false;
                        if(!(_loc3_ || Boolean(_loc2_)))
                        {
                           break;
                        }
                        §§push(this._optionsProxy);
                        if(!_loc4_)
                        {
                           §§push(OptionsMenuNavigationConstants.TOGGLE_BASES);
                           if(_loc3_ || Boolean(param1))
                           {
                              §§push(false);
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§pop().buttonChanged(§§pop(),§§pop());
                                 if(_loc4_ && Boolean(param1))
                                 {
                                    break;
                                 }
                                 this.handleBasementClick();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    break;
                                 }
                                 addr00f6:
                                 addr00f0:
                                 addr00ec:
                                 §§push(this._optionsProxy);
                                 §§push(OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN);
                                 §§push(this._layoutProxy.displayState == StageDisplayState.FULL_SCREEN);
                              }
                              §§pop().buttonChanged(§§pop(),§§pop());
                              if(_loc3_ || Boolean(_loc2_))
                              {
                              }
                              break;
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr00f0);
                        break;
                     case 1:
                        §§push(this.component);
                        if(!_loc4_)
                        {
                           §§goto(addr0054);
                        }
                        else
                        {
                           §§pop().subMenueFullscreen.selected = this._layoutProxy.displayState == StageDisplayState.FULL_SCREEN;
                           addr00c0:
                           if(_loc4_ && Boolean(_loc2_))
                           {
                              break;
                           }
                        }
                        §§goto(addr00ec);
                     case 2:
                        §§goto(addr00c0);
                        §§push(this.component);
                  }
                  return;
               }
               §§goto(addr017e);
            }
            §§goto(addr0178);
         }
         §§goto(addr0162);
      }
      
      public function get component() : OptionsGroupComponent
      {
         return super.viewComponent as OptionsGroupComponent;
      }
      
      private function setupListeners() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this.component);
            if(!_loc1_)
            {
               §§pop().subMenueBasement.addEventListener(MouseEvent.CLICK,this.handleBasementClick);
               if(!(_loc1_ && Boolean(this)))
               {
                  addr003a:
                  §§push(this.component);
                  if(_loc2_ || _loc2_)
                  {
                     §§pop().subMenueFullscreen.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(this.component);
                        if(_loc2_)
                        {
                           §§pop().subMenueMoreOptions.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                           if(!(_loc1_ && Boolean(this)))
                           {
                              §§push(this.component);
                              if(_loc2_)
                              {
                                 §§pop().subMenueSound.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                                 if(!(_loc1_ && Boolean(this)))
                                 {
                                    addr00c2:
                                    §§push(this.component);
                                    if(_loc2_)
                                    {
                                       addr00ca:
                                       §§pop().subMenueZoom.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                                       if(!_loc1_)
                                       {
                                          addr00e1:
                                          this.component.subMenueBasement.addEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                                          addr00de:
                                       }
                                       §§goto(addr00f0);
                                    }
                                    §§goto(addr00e1);
                                 }
                                 §§goto(addr00de);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr00f0);
                        }
                        §§goto(addr00ca);
                     }
                     §§goto(addr00c2);
                  }
                  §§goto(addr00ca);
               }
               addr00f0:
               return;
            }
            §§goto(addr00ca);
         }
         §§goto(addr003a);
      }
      
      private function handleBasementClick(param1:MouseEvent = null) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  this._soundProxy.playButtonClick();
                  if(!(_loc3_ && Boolean(param1)))
                  {
                     addr003c:
                     §§push(this._basementViewProxy);
                     if(!_loc3_)
                     {
                        §§push(§§pop().isBaseViewEnabled);
                        if(_loc2_)
                        {
                           if(§§pop() != this.component.subMenueBasement.selected)
                           {
                              if(_loc2_ || Boolean(param1))
                              {
                                 addr0074:
                                 §§push(this._basementViewProxy);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§pop().isBaseViewEnabled = this.component.subMenueBasement.selected;
                                    if(_loc2_)
                                    {
                                       addr0096:
                                       §§push(this._basementViewProxy);
                                       if(_loc2_)
                                       {
                                          addr00a2:
                                          addr009f:
                                          if(§§pop().isBaseViewEnabled)
                                          {
                                             if(_loc2_)
                                             {
                                                §§push(this._basementViewProxy);
                                                if(_loc2_)
                                                {
                                                   addr00bf:
                                                   §§push(param1 == null);
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   §§pop().setByUserAxn = §§pop();
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      addr00e4:
                                                      this._basementViewProxy.changeBaseViewForAll();
                                                      addr00e0:
                                                   }
                                                   §§goto(addr00e8);
                                                }
                                                §§goto(addr00e4);
                                             }
                                             §§goto(addr00e8);
                                          }
                                          §§goto(addr00e0);
                                       }
                                       §§goto(addr00bf);
                                    }
                                    §§goto(addr00e0);
                                 }
                                 §§goto(addr00e4);
                              }
                              §§goto(addr0096);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr00a2);
                     }
                     §§goto(addr009f);
                  }
                  addr00e8:
                  return;
               }
            }
            §§goto(addr003c);
         }
         §§goto(addr0074);
      }
      
      private function removeListeners() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§pop().subMenueBasement.removeEventListener(MouseEvent.CLICK,this.handleBasementClick);
               if(!(_loc2_ && _loc2_))
               {
                  addr0039:
                  §§push(this.component);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop().subMenueFullscreen.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                     if(_loc1_)
                     {
                        addr005d:
                        §§push(this.component);
                        if(_loc1_)
                        {
                           §§pop().subMenueMoreOptions.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              §§goto(addr008b);
                           }
                           §§goto(addr00b7);
                        }
                        §§goto(addr00e8);
                     }
                     addr008b:
                     §§push(this.component);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr009b:
                        §§pop().subMenueSound.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr00b7:
                           §§push(this.component);
                           if(_loc1_)
                           {
                              §§goto(addr00c9);
                           }
                           §§goto(addr00e8);
                        }
                        §§goto(addr00e5);
                     }
                     addr00c9:
                     §§pop().subMenueZoom.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr00e8:
                        this.component.subMenueBasement.removeEventListener(MouseEvent.CLICK,this.optionSubButtonClicked);
                        addr00e5:
                     }
                     return;
                  }
                  §§goto(addr00e8);
               }
               §§goto(addr005d);
            }
            §§goto(addr009b);
         }
         §§goto(addr0039);
      }
      
      private function prepareInitValues() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.component);
            if(_loc1_)
            {
               §§pop().subMenueSound.selected = this._localStorageProxy.isMainOptionSelected(OptionsMenuNavigationConstants.TOGGLE_SOUND);
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(this.component);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§pop().subMenueZoom.selected = false;
                     if(_loc1_ || Boolean(this))
                     {
                        addr0062:
                        §§push(this.component);
                        if(!_loc2_)
                        {
                           §§pop().subMenueMoreOptions.selected = false;
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(this.component);
                              if(_loc1_)
                              {
                                 §§pop().subMenueBasement.selected = false;
                                 if(!_loc2_)
                                 {
                                    §§push(this.component);
                                    if(_loc1_)
                                    {
                                       §§pop().subMenueFullscreen.name = OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN;
                                       if(!_loc2_)
                                       {
                                          addr00b5:
                                          §§push(this.component);
                                          if(_loc1_ || _loc1_)
                                          {
                                             addr00c5:
                                             §§pop().subMenueMoreOptions.name = OptionsMenuNavigationConstants.TOGGLE_SETTINGS;
                                             if(_loc1_)
                                             {
                                                §§push(this.component);
                                                if(_loc1_)
                                                {
                                                   addr00de:
                                                   §§pop().subMenueSound.name = OptionsMenuNavigationConstants.TOGGLE_SOUND;
                                                   if(!(_loc2_ && Boolean(this)))
                                                   {
                                                      §§push(this.component);
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         §§pop().subMenueZoom.name = OptionsMenuNavigationConstants.TOGGLE_ZOOM;
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            addr012d:
                                                            this.component.subMenueBasement.name = OptionsMenuNavigationConstants.TOGGLE_BASES;
                                                            addr012a:
                                                         }
                                                         §§goto(addr0139);
                                                      }
                                                      §§goto(addr012d);
                                                   }
                                                   §§goto(addr012a);
                                                }
                                                §§goto(addr012d);
                                             }
                                             §§goto(addr012a);
                                          }
                                          §§goto(addr00de);
                                       }
                                       §§goto(addr0139);
                                    }
                                    §§goto(addr012d);
                                 }
                                 addr0139:
                                 return;
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr012a);
                        }
                        §§goto(addr012d);
                     }
                     §§goto(addr00b5);
                  }
                  §§goto(addr00de);
               }
               §§goto(addr00b5);
            }
            §§goto(addr00c5);
         }
         §§goto(addr0062);
      }
      
      private function optionSubButtonClicked(param1:MouseEvent) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || _loc2_)
         {
            this._soundProxy.playButtonClick();
         }
         var _loc2_:String = param1.target.name;
         §§push(this._localStorageProxy.isMainOptionSelected(_loc2_));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(OptionsMenuNavigationConstants.TOGGLE_ZOOM);
               if(!_loc4_)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(this._optionsProxy);
                        §§push(_loc2_);
                        §§push(_loc3_);
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           §§push(!§§pop());
                        }
                        §§pop().buttonChanged(§§pop(),§§pop());
                        if(_loc5_ || Boolean(param1))
                        {
                           addr00a5:
                           §§push(_loc2_);
                           if(_loc5_ || Boolean(_loc2_))
                           {
                              §§push(OptionsMenuNavigationConstants.TOGGLE_FULLSCREEN);
                              if(_loc5_ || _loc3_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!(_loc4_ && Boolean(this)))
                                    {
                                       this._layoutProxy.changeDisplayState();
                                       if(_loc5_ || Boolean(this))
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr0108:
                                    addr0102:
                                    if(_loc2_ != OptionsMenuNavigationConstants.TOGGLE_BASES)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr011a:
                                          facade.sendNotification(_loc2_,!_loc3_);
                                       }
                                    }
                                 }
                                 §§goto(addr0122);
                              }
                              §§goto(addr0108);
                           }
                           §§goto(addr0102);
                        }
                        §§goto(addr011a);
                     }
                     addr0122:
                     return;
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0108);
            }
            §§goto(addr0102);
         }
         §§goto(addr00a5);
      }
   }
}

