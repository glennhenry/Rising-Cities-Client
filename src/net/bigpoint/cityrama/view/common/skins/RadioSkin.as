package net.bigpoint.cityrama.view.common.skins
{
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.StateChangeEvent;
   import mx.states.State;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import spark.components.RadioButton;
   import spark.core.SpriteVisualElement;
   import spark.skins.SparkSkin;
   
   public class RadioSkin extends SparkSkin implements IStateClient2
   {
      
      private var _367345007buttonContainer:SpriteVisualElement;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _colorUp:uint;
      
      private var _colorOver:uint;
      
      private var _colorDisabled:uint;
      
      private var _colorSelected:uint;
      
      private var _buttonSprite:Sprite;
      
      private var _buttonBlend:Sprite;
      
      private var _buttonBase:Sprite;
      
      private var _buttonSpriteClazz:Class;
      
      private var _buttonSpriteChanged:Boolean = false;
      
      private var _blinking:Boolean = false;
      
      private var _libLoaded:Boolean = false;
      
      private var _libLoadingProgress:Boolean = false;
      
      private var definitionNameBase:String;
      
      private var dynalibName:String;
      
      private var iconNameToggleUp:String;
      
      private var iconNameToggleDown:String;
      
      private var _selected:Boolean = false;
      
      private var _buttonIconToggleUp:Bitmap = null;
      
      private var _buttonIconToggleDown:Bitmap = null;
      
      private var _currentIcon:Bitmap = null;
      
      private var _213507019hostComponent:RadioButton;
      
      public function RadioSkin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               mx_internal::_document = this;
               if(!(_loc1_ && _loc1_))
               {
                  this.mxmlContent = [this._RadioSkin_SpriteVisualElement1_i()];
                  if(!_loc1_)
                  {
                     addr0058:
                     this.currentState = "up";
                     if(_loc2_ || Boolean(this))
                     {
                        §§goto(addr006c);
                     }
                     §§goto(addr008d);
                  }
                  addr006c:
                  this.addEventListener("currentStateChange",this.___RadioSkin_SparkSkin1_currentStateChange);
                  if(!_loc1_)
                  {
                     addr007d:
                     this.addEventListener("initialize",this.___RadioSkin_SparkSkin1_initialize);
                     if(!_loc1_)
                     {
                        states = [new State({
                           "name":"up",
                           "overrides":[]
                        }),new State({
                           "name":"over",
                           "stateGroups":["overStates"],
                           "overrides":[]
                        }),new State({
                           "name":"down",
                           "stateGroups":["downStates"],
                           "overrides":[]
                        }),new State({
                           "name":"disabled",
                           "stateGroups":["disabledStates"],
                           "overrides":[]
                        }),new State({
                           "name":"upAndSelected",
                           "stateGroups":["selectedUpStates","selectedStates"],
                           "overrides":[]
                        }),new State({
                           "name":"overAndSelected",
                           "stateGroups":["overStates","selectedStates"],
                           "overrides":[]
                        }),new State({
                           "name":"downAndSelected",
                           "stateGroups":["downStates","selectedStates"],
                           "overrides":[]
                        }),new State({
                           "name":"disabledAndSelected",
                           "stateGroups":["disabledStates","selectedUpStates","selectedStates"],
                           "overrides":[]
                        })];
                        addr008d:
                     }
                  }
                  return;
               }
               §§goto(addr007d);
            }
            §§goto(addr0058);
         }
         §§goto(addr007d);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            super.moduleFactory = param1;
            if(_loc2_ || Boolean(param1))
            {
               if(this.__moduleFactoryInitialized)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr005f);
                  }
               }
               else
               {
                  addr006d:
                  this.__moduleFactoryInitialized = true;
               }
               return;
            }
            §§goto(addr006d);
         }
         addr005f:
      }
      
      override public function initialize() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super.initialize();
         }
      }
      
      private function init() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            focusEnabled = false;
            if(_loc2_ || Boolean(this))
            {
               this.definitionNameBase = getStyle("definitionNameBase");
               if(!_loc1_)
               {
                  addr0047:
                  this.dynalibName = getStyle("dynalibName");
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr006c);
                  }
                  §§goto(addr007f);
               }
               addr006c:
               this.iconNameToggleUp = getStyle("iconNameToggleUp");
               if(!_loc1_)
               {
                  addr007f:
                  this.iconNameToggleDown = getStyle("iconNameToggleDown");
                  if(_loc2_ || Boolean(this))
                  {
                     this.createButton();
                  }
               }
               return;
            }
         }
         §§goto(addr0047);
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.styleChanged(param1);
            if(_loc3_)
            {
               this._colorUp = getStyle("colorUp");
               if(!(_loc2_ && Boolean(this)))
               {
                  this._colorOver = getStyle("colorOver");
                  if(_loc3_ || _loc3_)
                  {
                     this._colorSelected = getStyle("colorSelected");
                     if(_loc3_)
                     {
                        this._colorDisabled = getStyle("colorDisabled");
                        if(!_loc2_)
                        {
                           addr008d:
                           this.definitionNameBase = getStyle("definitionNameBase");
                           if(!_loc2_)
                           {
                              addr00a0:
                              this.dynalibName = getStyle("dynalibName");
                              if(!_loc2_)
                              {
                                 addr00bf:
                                 this.iconNameToggleUp = getStyle("iconNameToggleUp");
                                 if(!_loc2_)
                                 {
                                    §§goto(addr00d2);
                                 }
                                 §§goto(addr00ed);
                              }
                              §§goto(addr00d2);
                           }
                        }
                        §§goto(addr00bf);
                     }
                     §§goto(addr00ed);
                  }
                  addr00d2:
                  this.iconNameToggleDown = getStyle("iconNameToggleDown");
                  if(!(_loc2_ && Boolean(this)))
                  {
                     addr00ed:
                     invalidateProperties();
                  }
                  return;
               }
               §§goto(addr00a0);
            }
            §§goto(addr00ed);
         }
         §§goto(addr008d);
      }
      
      public function resetButton() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this._selected = false;
            if(_loc2_ || _loc1_)
            {
               this.hostComponent.selected = false;
               if(!_loc1_)
               {
                  super.currentState = "up";
                  §§goto(addr003f);
               }
               §§goto(addr007a);
            }
            §§goto(addr0068);
         }
         addr003f:
         if(_loc2_)
         {
            this.commitProperties();
            if(_loc2_ || _loc1_)
            {
               addr0068:
               invalidateProperties();
               if(!(_loc1_ && _loc2_))
               {
                  addr007a:
                  invalidateDisplayList();
               }
               §§goto(addr0081);
            }
            §§goto(addr007a);
         }
         addr0081:
      }
      
      override protected function commitProperties() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super.commitProperties();
            if(!(_loc1_ && _loc1_))
            {
               if(this.buttonContainer)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0059:
                     if(this._buttonSpriteChanged)
                     {
                        if(!_loc1_)
                        {
                           this._buttonSpriteChanged = false;
                           if(_loc2_)
                           {
                              addr0070:
                              this._buttonSprite = null;
                           }
                           §§goto(addr0075);
                        }
                        §§goto(addr0070);
                     }
                  }
               }
               §§goto(addr0075);
            }
            §§goto(addr0059);
         }
         addr0075:
      }
      
      private function createButton(param1:Event = null) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:Array = null;
         var _loc5_:* = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(_loc6_ || Boolean(this))
         {
            §§push(_loc2_.libAllReadyLoaded(this.dynalibName));
            if(!(_loc7_ && Boolean(param1)))
            {
               if(!§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     addr0063:
                     if(this._libLoadingProgress)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           return;
                        }
                        addr00e8:
                        this._libLoadingProgress = false;
                     }
                     else
                     {
                        addr0084:
                        this._libLoadingProgress = true;
                        if(!_loc7_)
                        {
                           addr008f:
                           _loc4_ = [this.dynalibName];
                           if(!_loc7_)
                           {
                              _loc5_ = this.iconNameToggleUp + "ToggleButtonNotification";
                              if(!(_loc7_ && _loc3_))
                              {
                                 _loc2_.addEventListener(_loc5_,this.createButton);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr00cf:
                                    _loc2_.checkSWFArrayLoaded(_loc4_,_loc5_);
                                 }
                              }
                              return;
                           }
                           §§goto(addr00cf);
                        }
                     }
                     §§goto(addr00ed);
                  }
                  §§goto(addr008f);
               }
               else
               {
                  this._libLoaded = true;
                  if(!_loc7_)
                  {
                     §§goto(addr00e8);
                  }
               }
               addr00ed:
               if(this._libLoaded)
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     _loc2_.removeEventListener(this.iconNameToggleUp + "ToggleButtonNotification",this.createButton);
                  }
               }
               var _loc3_:Class = ApplicationDomain.currentDomain.getDefinition(this.definitionNameBase) as Class;
               if(_loc6_)
               {
                  §§push(Boolean(this._buttonSprite));
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     var _temp_9:* = §§pop();
                     §§push(_temp_9);
                     if(_temp_9)
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(!_loc7_)
                           {
                              §§goto(addr0176);
                           }
                           §§goto(addr0250);
                        }
                        §§goto(addr0175);
                     }
                  }
                  addr0176:
                  §§goto(addr0154);
               }
               addr0154:
               §§push(_loc3_ is this._buttonSpriteClazz);
               if(_loc6_ || Boolean(param1))
               {
                  addr0175:
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     this._buttonSpriteClazz = _loc3_;
                     if(!(_loc7_ && Boolean(this)))
                     {
                        this._buttonSpriteChanged = true;
                        if(!(_loc7_ && Boolean(this)))
                        {
                           addr01d7:
                           this._buttonSprite = Sprite(new this._buttonSpriteClazz());
                           if(!_loc7_)
                           {
                              this.buttonContainer.addChild(this._buttonSprite);
                              if(!_loc7_)
                              {
                                 this._buttonBlend = this._buttonSprite.getChildByName("blend") as Sprite;
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    this._buttonBase = this._buttonSprite.getChildByName("base") as Sprite;
                                    if(_loc6_)
                                    {
                                       addr0236:
                                       this.buttonContainer.height = this._buttonSprite.height;
                                       if(!(_loc7_ && Boolean(_loc3_)))
                                       {
                                          addr0250:
                                          this.buttonContainer.width = this._buttonSprite.width;
                                          if(_loc6_ || Boolean(this))
                                          {
                                             this._buttonIconToggleUp = _loc2_.getBitmap(this.dynalibName,this.iconNameToggleUp);
                                             if(_loc6_)
                                             {
                                                addr0281:
                                                this._buttonIconToggleDown = _loc2_.getBitmap(this.dynalibName,this.iconNameToggleDown);
                                                if(_loc6_)
                                                {
                                                   addr0298:
                                                   this._currentIcon = new Bitmap();
                                                   if(!(_loc7_ && Boolean(this)))
                                                   {
                                                      addr02bd:
                                                      this._buttonBase.addChild(this._currentIcon);
                                                      if(_loc6_)
                                                      {
                                                         addr02cf:
                                                         this._currentIcon.bitmapData = this._buttonIconToggleUp.bitmapData;
                                                         if(!(_loc7_ && Boolean(this)))
                                                         {
                                                            addr02eb:
                                                            this.animateButton(currentState);
                                                         }
                                                      }
                                                      §§goto(addr02f4);
                                                   }
                                                   §§goto(addr02eb);
                                                }
                                             }
                                             §§goto(addr02f4);
                                          }
                                          §§goto(addr02bd);
                                       }
                                       §§goto(addr0298);
                                    }
                                    §§goto(addr02cf);
                                 }
                                 §§goto(addr0281);
                              }
                              §§goto(addr02cf);
                           }
                           §§goto(addr0250);
                        }
                        §§goto(addr02bd);
                     }
                     §§goto(addr0236);
                  }
                  §§goto(addr01d7);
               }
               else if(this._buttonSprite)
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     §§goto(addr01d7);
                  }
                  §§goto(addr02cf);
               }
               else
               {
                  this._buttonSpriteClazz = _loc3_;
                  if(!_loc7_)
                  {
                     §§goto(addr01d7);
                  }
               }
               addr02f4:
               return;
            }
            §§goto(addr0063);
         }
         §§goto(addr0084);
      }
      
      private function currentStateChangeHandler(param1:StateChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.animateButton(param1.newState);
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_)
         {
            super.updateDisplayList(param1,param2);
            if(!(_loc4_ && Boolean(param2)))
            {
               if(this._buttonSprite)
               {
                  if(_loc3_)
                  {
                     this._buttonSprite.width = param1;
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr005b:
                        this._buttonSprite.height = param2;
                     }
                  }
               }
               §§goto(addr0062);
            }
            §§goto(addr005b);
         }
         addr0062:
      }
      
      override protected function measure() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super.measure();
            if(!_loc1_)
            {
               if(this._buttonSprite)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr0035:
                     if(this.measuredWidth == 0)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr0056:
                           this.measuredWidth = this._buttonSprite.width;
                           if(!(_loc1_ && _loc2_))
                           {
                              addr0077:
                              if(this.measuredHeight == 0)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    this.measuredHeight = this._buttonSprite.height;
                                 }
                              }
                           }
                           §§goto(addr0098);
                        }
                     }
                  }
                  §§goto(addr0077);
               }
               addr0098:
               return;
            }
            §§goto(addr0056);
         }
         §§goto(addr0035);
      }
      
      private function animateButton(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            if(this._libLoaded == false)
            {
               if(!(_loc3_ && Boolean(param1)))
               {
                  §§goto(addr002f);
               }
            }
            var _loc2_:* = param1;
            if(_loc4_ || Boolean(param1))
            {
               §§push("over");
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr02c7:
                           §§push(4);
                           if(_loc4_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push("down");
                        if(!_loc3_)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || Boolean(_loc2_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(1);
                                    if(_loc3_ && Boolean(_loc2_))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr025f:
                                    §§push(2);
                                    if(_loc4_ || Boolean(this))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("up");
                                 if(_loc4_ || Boolean(_loc2_))
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§goto(addr025f);
                                          }
                                          else
                                          {
                                             addr0328:
                                             §§push(6);
                                             if(_loc4_ || Boolean(_loc2_))
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push("disabled");
                                          if(_loc4_ || Boolean(param1))
                                          {
                                             addr0284:
                                             §§push(_loc2_);
                                             if(_loc4_)
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§push(3);
                                                      if(_loc3_ && Boolean(this))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0328);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push("disabledAndSelected");
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr02b8:
                                                      §§push(_loc2_);
                                                      if(!_loc3_)
                                                      {
                                                         addr02be:
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr02c7);
                                                            }
                                                            else
                                                            {
                                                               addr02fc:
                                                               §§push(5);
                                                               if(_loc3_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("upAndSelected");
                                                            if(!(_loc3_ && Boolean(this)))
                                                            {
                                                               addr02e3:
                                                               §§push(_loc2_);
                                                               if(_loc4_ || Boolean(_loc2_))
                                                               {
                                                                  addr02f2:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§goto(addr02fc);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr0328);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("overAndSelected");
                                                                     if(!(_loc3_ && Boolean(param1)))
                                                                     {
                                                                        addr0317:
                                                                        §§push(_loc2_);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr031e:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr0328);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr0350:
                                                                                 §§push(7);
                                                                                 if(_loc4_ || Boolean(this))
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr0370);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr034c);
                                                                           }
                                                                        }
                                                                        addr034c:
                                                                        §§goto(addr034b);
                                                                     }
                                                                     addr034b:
                                                                     if("downAndSelected" === _loc2_)
                                                                     {
                                                                        §§goto(addr0350);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(8);
                                                                     }
                                                                     §§goto(addr0370);
                                                                  }
                                                                  §§goto(addr0370);
                                                               }
                                                               §§goto(addr031e);
                                                            }
                                                            §§goto(addr0317);
                                                         }
                                                         §§goto(addr0370);
                                                      }
                                                      §§goto(addr031e);
                                                   }
                                                   §§goto(addr0317);
                                                }
                                                §§goto(addr0370);
                                             }
                                             §§goto(addr02be);
                                          }
                                          §§goto(addr034b);
                                       }
                                       §§goto(addr0370);
                                    }
                                    §§goto(addr02be);
                                 }
                                 §§goto(addr0284);
                              }
                              §§goto(addr0370);
                           }
                           §§goto(addr02f2);
                        }
                        §§goto(addr02b8);
                     }
                     addr0370:
                     switch(§§pop())
                     {
                        case 0:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorOver,
                              "tintAmount":1
                           }});
                           if(_loc4_ || Boolean(_loc2_))
                           {
                           }
                           break;
                        case 1:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorSelected,
                              "tintAmount":1
                           }});
                           if(!_loc3_)
                           {
                              this._currentIcon.bitmapData = this._buttonIconToggleDown.bitmapData;
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                           addr0132:
                           this._currentIcon.bitmapData = this._buttonIconToggleDown.bitmapData;
                           if(_loc4_ || Boolean(this))
                           {
                              break;
                           }
                           addr0174:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorSelected,
                              "tintAmount":1
                           }});
                           if(_loc4_ || _loc3_)
                           {
                           }
                           break;
                        case 2:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorUp,
                              "tintAmount":1
                           }});
                           if(!(_loc3_ && Boolean(this)))
                           {
                              break;
                           }
                           §§goto(addr0174);
                           break;
                        case 3:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorDisabled,
                              "tintAmount":1
                           }});
                           if(_loc3_)
                           {
                           }
                           break;
                        case 4:
                           break;
                        case 5:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorSelected,
                              "tintAmount":1
                           }});
                           if(!(_loc4_ || Boolean(_loc2_)))
                           {
                              break;
                           }
                           §§goto(addr0132);
                           break;
                        case 6:
                           break;
                        case 7:
                           this._currentIcon.bitmapData = this._buttonIconToggleUp.bitmapData;
                           if(!(_loc4_ || Boolean(param1)))
                           {
                              break;
                           }
                           §§goto(addr0174);
                     }
                     return;
                  }
                  §§goto(addr031e);
               }
               §§goto(addr02e3);
            }
            §§goto(addr02fc);
         }
         addr002f:
      }
      
      override protected function stateChanged(param1:String, param2:String, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super.stateChanged(param1,param2,param3);
         }
      }
      
      private function _RadioSkin_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(_loc3_)
         {
            _loc1_.initialized(this,"buttonContainer");
            if(_loc3_ || Boolean(_loc1_))
            {
               this.buttonContainer = _loc1_;
               if(_loc3_)
               {
                  addr004d:
                  BindingManager.executeBindings(this,"buttonContainer",this.buttonContainer);
               }
               §§goto(addr005a);
            }
            §§goto(addr004d);
         }
         addr005a:
         return _loc1_;
      }
      
      public function ___RadioSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            this.currentStateChangeHandler(param1);
         }
      }
      
      public function ___RadioSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this.init();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonContainer() : SpriteVisualElement
      {
         return this._367345007buttonContainer;
      }
      
      public function set buttonContainer(param1:SpriteVisualElement) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:Object = this._367345007buttonContainer;
         if(!_loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc4_ || _loc3_)
               {
                  this._367345007buttonContainer = param1;
                  if(_loc4_ || _loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc3_)
                        {
                           addr0070:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr007f);
                  }
               }
               §§goto(addr0070);
            }
         }
         addr007f:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RadioButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RadioButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  addr0035:
                  this._213507019hostComponent = param1;
                  if(_loc3_)
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!_loc4_)
                        {
                           addr004f:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr005e);
                  }
                  §§goto(addr004f);
               }
            }
            addr005e:
            return;
         }
         §§goto(addr0035);
      }
   }
}

