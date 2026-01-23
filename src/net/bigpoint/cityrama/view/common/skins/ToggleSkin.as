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
   import spark.components.ToggleButton;
   import spark.core.SpriteVisualElement;
   import spark.skins.SparkSkin;
   
   public class ToggleSkin extends SparkSkin implements IStateClient2
   {
      
      private var _367345007buttonContainer:SpriteVisualElement;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _colorUp:uint;
      
      private var _colorOver:uint;
      
      private var _colorSelected:uint;
      
      private var _colorDisabled:uint;
      
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
      
      private var _buttonIconToggleUp:Bitmap = null;
      
      private var _buttonIconToggleDown:Bitmap = null;
      
      private var _currentIcon:Bitmap = null;
      
      private var _213507019hostComponent:ToggleButton;
      
      public function ToggleSkin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
            if(_loc1_ || _loc2_)
            {
               mx_internal::_document = this;
               if(_loc1_)
               {
                  this.mxmlContent = [this._ToggleSkin_SpriteVisualElement1_i()];
                  if(_loc1_)
                  {
                     this.currentState = "up";
                     if(!_loc2_)
                     {
                        this.addEventListener("currentStateChange",this.___ToggleSkin_SparkSkin1_currentStateChange);
                        if(_loc1_)
                        {
                           addr006c:
                           this.addEventListener("initialize",this.___ToggleSkin_SparkSkin1_initialize);
                           if(_loc1_ || _loc2_)
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
                           }
                        }
                        §§goto(addr016d);
                     }
                     §§goto(addr006c);
                  }
                  §§goto(addr016d);
               }
               §§goto(addr006c);
            }
         }
         addr016d:
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.moduleFactory = param1;
            if(_loc3_)
            {
               addr002b:
               if(this.__moduleFactoryInitialized)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
            this.__moduleFactoryInitialized = true;
            return;
         }
         §§goto(addr002b);
      }
      
      override public function initialize() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            super.initialize();
         }
      }
      
      private function init() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            focusEnabled = false;
            if(!_loc2_)
            {
               this.definitionNameBase = getStyle("definitionNameBase");
               if(_loc1_)
               {
                  this.dynalibName = getStyle("dynalibName");
                  if(_loc1_ || _loc2_)
                  {
                     this.iconNameToggleUp = getStyle("iconNameToggleUp");
                     if(!_loc2_)
                     {
                        addr0076:
                        this.iconNameToggleDown = getStyle("iconNameToggleDown");
                        if(_loc1_)
                        {
                           addr0089:
                           this.createButton();
                        }
                     }
                  }
                  return;
               }
               §§goto(addr0076);
            }
         }
         §§goto(addr0089);
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super.styleChanged(param1);
            if(!(_loc2_ && _loc2_))
            {
               this._colorUp = getStyle("colorUp");
               if(_loc3_)
               {
                  this._colorOver = getStyle("colorOver");
                  if(!_loc2_)
                  {
                     this._colorSelected = getStyle("colorSelected");
                     if(_loc3_ || Boolean(this))
                     {
                        §§goto(addr0079);
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr00d2);
               }
               §§goto(addr00bf);
            }
            addr0079:
            this._colorDisabled = getStyle("colorDisabled");
            if(_loc3_)
            {
               this.definitionNameBase = getStyle("definitionNameBase");
               if(!_loc2_)
               {
                  §§goto(addr00ac);
               }
               §§goto(addr00e5);
            }
            addr00ac:
            this.dynalibName = getStyle("dynalibName");
            if(_loc3_)
            {
               addr00bf:
               this.iconNameToggleUp = getStyle("iconNameToggleUp");
               if(_loc3_)
               {
                  addr00d2:
                  this.iconNameToggleDown = getStyle("iconNameToggleDown");
                  if(_loc3_)
                  {
                     addr00e5:
                     invalidateProperties();
                  }
                  §§goto(addr00ea);
               }
               §§goto(addr00e5);
            }
            addr00ea:
            return;
         }
         §§goto(addr00bf);
      }
      
      override protected function commitProperties() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super.commitProperties();
            if(_loc1_)
            {
               if(this.buttonContainer)
               {
                  if(_loc1_ || _loc2_)
                  {
                     if(this._buttonSpriteChanged)
                     {
                        if(_loc1_)
                        {
                           addr005d:
                           this._buttonSpriteChanged = false;
                           if(_loc1_ || _loc2_)
                           {
                              addr006f:
                              this._buttonSprite = null;
                           }
                           §§goto(addr0074);
                        }
                        §§goto(addr006f);
                     }
                     §§goto(addr0074);
                  }
                  §§goto(addr005d);
               }
            }
         }
         addr0074:
      }
      
      private function createButton(param1:Event = null) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc4_:Array = null;
         var _loc5_:* = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!_loc7_)
         {
            §§push(_loc2_.libAllReadyLoaded(this.dynalibName));
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && Boolean(this)))
                  {
                     addr0052:
                     if(this._libLoadingProgress)
                     {
                        if(_loc6_)
                        {
                           §§goto(addr005c);
                        }
                     }
                     this._libLoadingProgress = true;
                     if(_loc6_)
                     {
                        _loc4_ = [this.dynalibName];
                        _loc5_ = this.iconNameToggleUp + "ToggleButtonNotification";
                        if(!_loc7_)
                        {
                           _loc2_.addEventListener(_loc5_,this.createButton);
                           if(!_loc7_)
                           {
                              addr0098:
                              _loc2_.checkSWFArrayLoaded(_loc4_,_loc5_);
                           }
                           return;
                        }
                        §§goto(addr0098);
                     }
                  }
                  addr00b9:
                  this._libLoadingProgress = false;
               }
               else
               {
                  this._libLoaded = true;
                  if(_loc6_ || Boolean(param1))
                  {
                     §§goto(addr00b9);
                  }
               }
               if(this._libLoaded)
               {
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     _loc2_.removeEventListener(this.iconNameToggleUp + "ToggleButtonNotification",this.createButton);
                  }
               }
               var _loc3_:Class = ApplicationDomain.currentDomain.getDefinition(this.definitionNameBase) as Class;
               if(_loc6_)
               {
                  §§push(Boolean(this._buttonSprite));
                  if(!_loc7_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     if(_temp_4)
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(_loc6_ || Boolean(this))
                           {
                              addr0132:
                              §§push(_loc3_ is this._buttonSpriteClazz);
                              if(!_loc7_)
                              {
                                 addr0131:
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    this._buttonSpriteClazz = _loc3_;
                                    if(!_loc7_)
                                    {
                                       this._buttonSpriteChanged = true;
                                       if(!(_loc7_ && Boolean(_loc3_)))
                                       {
                                          addr0198:
                                          this._buttonSprite = Sprite(new this._buttonSpriteClazz());
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             this.buttonContainer.addChild(this._buttonSprite);
                                             if(!_loc7_)
                                             {
                                                addr01c6:
                                                this._buttonBlend = this._buttonSprite.getChildByName("blend") as Sprite;
                                                if(!_loc7_)
                                                {
                                                   this._buttonBase = this._buttonSprite.getChildByName("base") as Sprite;
                                                   if(_loc6_)
                                                   {
                                                      addr01f7:
                                                      this.buttonContainer.height = this._buttonSprite.height;
                                                      if(!(_loc7_ && Boolean(param1)))
                                                      {
                                                         addr0211:
                                                         this.buttonContainer.width = this._buttonSprite.width;
                                                         if(!(_loc7_ && Boolean(this)))
                                                         {
                                                            this._buttonIconToggleUp = _loc2_.getBitmap(this.dynalibName,this.iconNameToggleUp);
                                                            if(!_loc7_)
                                                            {
                                                               addr0242:
                                                               this._buttonIconToggleDown = _loc2_.getBitmap(this.dynalibName,this.iconNameToggleDown);
                                                               if(_loc6_ || Boolean(_loc3_))
                                                               {
                                                                  this._currentIcon = new Bitmap();
                                                                  addr0261:
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr0280:
                                                                     this._buttonBase.addChild(this._currentIcon);
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr0292);
                                                                     }
                                                                  }
                                                                  §§goto(addr02a6);
                                                               }
                                                               §§goto(addr0292);
                                                            }
                                                            §§goto(addr0261);
                                                         }
                                                      }
                                                      §§goto(addr0280);
                                                   }
                                                   §§goto(addr02a6);
                                                }
                                                §§goto(addr01f7);
                                             }
                                             addr0292:
                                             this._currentIcon.bitmapData = this._buttonIconToggleUp.bitmapData;
                                             if(!_loc7_)
                                             {
                                                addr02a6:
                                                this.animateButton(currentState);
                                             }
                                             §§goto(addr02af);
                                          }
                                          §§goto(addr0211);
                                       }
                                    }
                                    §§goto(addr0242);
                                 }
                                 §§goto(addr01c6);
                              }
                              else
                              {
                                 if(this._buttonSprite)
                                 {
                                    if(_loc6_ || Boolean(_loc2_))
                                    {
                                       §§goto(addr0198);
                                    }
                                    addr02af:
                                    return;
                                 }
                                 this._buttonSpriteClazz = _loc3_;
                                 if(!(_loc7_ && Boolean(param1)))
                                 {
                                    §§goto(addr0198);
                                 }
                              }
                              §§goto(addr02a6);
                           }
                           §§goto(addr0261);
                        }
                     }
                     §§goto(addr0132);
                  }
                  §§goto(addr0131);
               }
               §§goto(addr02a6);
            }
            §§goto(addr0052);
         }
         addr005c:
      }
      
      private function currentStateChangeHandler(param1:StateChangeEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.animateButton(param1.newState);
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!_loc3_)
         {
            super.updateDisplayList(param1,param2);
            if(!_loc3_)
            {
               §§goto(addr0033);
            }
            §§goto(addr0055);
         }
         addr0033:
         if(this._buttonSprite)
         {
            if(!(_loc3_ && Boolean(param1)))
            {
               addr0055:
               this._buttonSprite.width = param1;
               if(_loc4_ || Boolean(param1))
               {
                  this._buttonSprite.height = param2;
               }
            }
         }
      }
      
      override protected function measure() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            super.measure();
            if(_loc2_ || _loc2_)
            {
               if(this._buttonSprite)
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(this.measuredWidth == 0)
                     {
                        if(_loc2_)
                        {
                           this.measuredWidth = this._buttonSprite.width;
                           if(!(_loc1_ && _loc2_))
                           {
                              §§goto(addr007f);
                           }
                        }
                        §§goto(addr008e);
                     }
                     addr007f:
                     if(this.measuredHeight == 0)
                     {
                        if(!_loc1_)
                        {
                           addr008e:
                           this.measuredHeight = this._buttonSprite.height;
                        }
                     }
                     §§goto(addr0098);
                  }
               }
               addr0098:
               return;
            }
         }
         §§goto(addr007f);
      }
      
      private function animateButton(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            if(this._libLoaded == false)
            {
               if(!_loc4_)
               {
                  §§goto(addr002e);
               }
            }
            var _loc2_:* = param1;
            if(!_loc4_)
            {
               §§push("over");
               if(!_loc4_)
               {
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr021e:
                           §§push(1);
                           if(_loc3_ || _loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push("down");
                        if(!_loc4_)
                        {
                           addr020e:
                           §§push(_loc2_);
                           if(_loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr021e);
                                 }
                                 else
                                 {
                                    addr0249:
                                    §§push(2);
                                    if(_loc3_ || Boolean(_loc2_))
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("up");
                                 if(!_loc4_)
                                 {
                                    §§push(_loc2_);
                                    if(_loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             §§goto(addr0249);
                                          }
                                          else
                                          {
                                             addr033f:
                                             §§push(7);
                                             if(_loc4_)
                                             {
                                             }
                                          }
                                          §§goto(addr0357);
                                       }
                                       else
                                       {
                                          §§push("disabled");
                                          if(_loc3_ || _loc3_)
                                          {
                                             addr026c:
                                             §§push(_loc2_);
                                             if(!(_loc4_ && Boolean(this)))
                                             {
                                                addr027b:
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(3);
                                                      if(_loc4_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr033f);
                                                   }
                                                   §§goto(addr0357);
                                                }
                                                else
                                                {
                                                   §§push("disabledAndSelected");
                                                   if(_loc3_ || Boolean(this))
                                                   {
                                                      addr02a1:
                                                      §§push(_loc2_);
                                                      if(!_loc4_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!(_loc4_ && Boolean(this)))
                                                            {
                                                               §§push(4);
                                                               if(_loc3_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr02ed:
                                                               §§push(5);
                                                               if(_loc3_)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("upAndSelected");
                                                            if(_loc3_ || Boolean(param1))
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc4_)
                                                               {
                                                                  addr02dc:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§goto(addr02ed);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr033f);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("overAndSelected");
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!(_loc4_ && Boolean(_loc2_)))
                                                                        {
                                                                           addr030f:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(_loc3_ || Boolean(this))
                                                                              {
                                                                                 §§push(6);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr033f);
                                                                              }
                                                                              §§goto(addr0357);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr033b);
                                                                           }
                                                                        }
                                                                        addr033b:
                                                                     }
                                                                     §§goto(addr033a);
                                                                  }
                                                                  §§goto(addr033f);
                                                               }
                                                               §§goto(addr030f);
                                                            }
                                                            addr033a:
                                                            if("downAndSelected" === _loc2_)
                                                            {
                                                               §§goto(addr033f);
                                                            }
                                                            else
                                                            {
                                                               §§push(8);
                                                            }
                                                            §§goto(addr0357);
                                                         }
                                                         §§goto(addr0357);
                                                      }
                                                      §§goto(addr02dc);
                                                   }
                                                   §§goto(addr033a);
                                                }
                                             }
                                             §§goto(addr030f);
                                          }
                                          §§goto(addr02a1);
                                       }
                                    }
                                    §§goto(addr027b);
                                 }
                                 §§goto(addr02a1);
                              }
                              §§goto(addr0357);
                           }
                           §§goto(addr027b);
                        }
                        §§goto(addr026c);
                     }
                     addr0357:
                     switch(§§pop())
                     {
                        case 0:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorOver,
                              "tintAmount":1
                           }});
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           addr00cd:
                           this._currentIcon.bitmapData = this._buttonIconToggleUp.bitmapData;
                           if(_loc3_)
                           {
                           }
                           break;
                        case 1:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorSelected,
                              "tintAmount":1
                           }});
                           if(_loc3_)
                           {
                              this._currentIcon.bitmapData = this._buttonIconToggleDown.bitmapData;
                              if(_loc3_)
                              {
                              }
                           }
                           break;
                        case 2:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorUp,
                              "tintAmount":1
                           }});
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           §§goto(addr00cd);
                           break;
                        case 3:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorDisabled,
                              "tintAmount":1
                           }});
                           if(_loc4_ && Boolean(_loc2_))
                           {
                           }
                           break;
                        case 4:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorDisabled,
                              "tintAmount":1
                           }});
                           if(_loc3_)
                           {
                           }
                           break;
                        case 5:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorSelected,
                              "tintAmount":1
                           }});
                           if(!_loc4_)
                           {
                              this._currentIcon.bitmapData = this._buttonIconToggleDown.bitmapData;
                              if(!_loc4_)
                              {
                                 break;
                              }
                           }
                           addr01bc:
                           this._currentIcon.bitmapData = this._buttonIconToggleUp.bitmapData;
                           if(_loc4_)
                           {
                           }
                           break;
                        case 6:
                           break;
                        case 7:
                           TweenMax.to(this._buttonBlend,0.1,{"colorTransform":{
                              "tint":this._colorUp,
                              "tintAmount":1
                           }});
                           if(_loc4_ && Boolean(this))
                           {
                              break;
                           }
                           §§goto(addr01bc);
                     }
                     return;
                  }
                  §§goto(addr030f);
               }
               §§goto(addr020e);
            }
            §§goto(addr02ed);
         }
         addr002e:
      }
      
      private function _ToggleSkin_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         if(!_loc2_)
         {
            _loc1_.initialized(this,"buttonContainer");
            if(!_loc2_)
            {
               this.buttonContainer = _loc1_;
               if(!(_loc2_ && _loc2_))
               {
                  addr004d:
                  BindingManager.executeBindings(this,"buttonContainer",this.buttonContainer);
               }
            }
            return _loc1_;
         }
         §§goto(addr004d);
      }
      
      public function ___ToggleSkin_SparkSkin1_currentStateChange(param1:StateChangeEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(this)))
         {
            this.currentStateChangeHandler(param1);
         }
      }
      
      public function ___ToggleSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
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
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._367345007buttonContainer;
         if(_loc3_ || _loc3_)
         {
            if(_loc2_ !== param1)
            {
               if(_loc3_)
               {
                  this._367345007buttonContainer = param1;
                  if(_loc3_ || Boolean(param1))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr0074:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonContainer",_loc2_,param1));
                        }
                     }
                     §§goto(addr0083);
                  }
               }
               §§goto(addr0074);
            }
         }
         addr0083:
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ToggleButton
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToggleButton) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = this._213507019hostComponent;
         if(!_loc4_)
         {
            if(_loc2_ !== param1)
            {
               if(!(_loc4_ && Boolean(param1)))
               {
                  this._213507019hostComponent = param1;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     if(this.hasEventListener("propertyChange"))
                     {
                        if(_loc3_)
                        {
                           addr0072:
                           this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
                        }
                     }
                     §§goto(addr0081);
                  }
                  §§goto(addr0072);
               }
            }
            addr0081:
            return;
         }
         §§goto(addr0072);
      }
   }
}

