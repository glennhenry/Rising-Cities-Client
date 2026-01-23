package net.bigpoint.cityrama.view.field
{
   import as3isolib.display.IsoView;
   import as3isolib.display.scene.IsoScene;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import com.greensock.TweenMax;
   import com.greensock.easing.Expo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import mx.core.FlexGlobals;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerFeatureConstants;
   import net.bigpoint.cityrama.constants.ServerRestrictionConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.LayoutProxy;
   import net.bigpoint.cityrama.model.events.ExpansionSaleEventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.fieldInfoLayer.FieldInfoLayerProxy;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.horizon.HorizonProxy;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuNavigationConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapeDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionShapePointDTO;
   import net.bigpoint.cityrama.view.application.ui.components.MainView;
   import net.bigpoint.field3d.controlls.mousecontrol.MouseClickFieldControl;
   import net.bigpoint.field3d.controlls.mousecontrol.MouseDragFieldMoveControl;
   import net.bigpoint.field3d.controlls.mousecontrol.MouseWheelZoomControl;
   import net.bigpoint.particles.ParticleSystem;
   import net.bigpoint.particles.particle.ParticleEmitterDecorator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.mediator.Mediator;
   import spark.components.Group;
   import spark.core.SpriteVisualElement;
   
   public class FieldViewPortMediator extends Mediator implements IMediator
   {
      
      public static const NAME:String = "FieldViewPortMediator";
      
      public static const FIELD_MIN_SIZE:Rectangle;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && FieldViewPortMediator))
      {
         NAME = "FieldViewPortMediator";
         if(!_loc1_)
         {
            FIELD_MIN_SIZE = new Rectangle(0,0,976,544);
         }
      }
      
      private var _view:IsoView;
      
      private var _layoutProxy:LayoutProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _configProxy:GameConfigProxy;
      
      private var _playfieldExpansionsProxy:PlayfieldExpansionsProxy;
      
      private var _expansionSaleProxy:ExpansionSaleEventProxy;
      
      private var _mouseWheelZoomControl:MouseWheelZoomControl;
      
      private var _mouseClickFieldControl:MouseClickFieldControl;
      
      private var _mouseDragFieldMoveControl:MouseDragFieldMoveControl;
      
      private var _capturePoint:Point;
      
      private var _isoScene:IsoScene;
      
      private var _particleSystem:ParticleSystem;
      
      private var _resourceMarker:Vector.<Sprite>;
      
      private var _expansionSaleMarker:Vector.<Sprite>;
      
      private var _animatedPan:Pt;
      
      private var _whiteSprite:Sprite;
      
      private var _blendOut:Boolean;
      
      private var _blendInComplete:Boolean;
      
      private var _motionLimitSprite:Sprite;
      
      private var _bmp:Bitmap;
      
      private var _pfGfxId:String;
      
      private var _playfieldAnimation:BitmapClip;
      
      private var _playfieldAnimationKillRequest:Boolean;
      
      public function FieldViewPortMediator(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            this._capturePoint = new Point();
            if(_loc4_ || Boolean(param2))
            {
               addr0044:
               super(param1,param2);
            }
            return;
         }
         §§goto(addr0044);
      }
      
      override public function onRegister() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this._layoutProxy = LayoutProxy(facade.retrieveProxy(LayoutProxy.NAME));
            if(!(_loc1_ && Boolean(this)))
            {
               this._playfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
               if(!(_loc1_ && Boolean(this)))
               {
                  this._configProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
                  addr005f:
                  if(_loc2_ || Boolean(this))
                  {
                     addr0086:
                     this._playfieldExpansionsProxy = facade.retrieveProxy(PlayfieldExpansionsProxy.NAME) as PlayfieldExpansionsProxy;
                     if(_loc2_ || _loc2_)
                     {
                        this._expansionSaleProxy = facade.retrieveProxy(ExpansionSaleEventProxy.NAME) as ExpansionSaleEventProxy;
                        if(_loc2_)
                        {
                           this._resourceMarker = new Vector.<Sprite>();
                           if(!_loc1_)
                           {
                              this._expansionSaleMarker = new Vector.<Sprite>();
                              addr00cf:
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§goto(addr00f4);
                              }
                           }
                           §§goto(addr0107);
                        }
                        §§goto(addr00cf);
                     }
                  }
                  §§goto(addr0107);
               }
               §§goto(addr0086);
            }
            addr00f4:
            this.createView();
            if(_loc2_ || _loc2_)
            {
               addr0107:
               this.createViewControls();
            }
            return;
         }
         §§goto(addr005f);
      }
      
      private function createView() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this._view = new IsoView();
            if(_loc1_ || _loc1_)
            {
               §§push(this._view);
               if(!_loc2_)
               {
                  §§push(true);
                  if(_loc1_)
                  {
                     §§pop().clipContent = §§pop();
                     if(_loc1_ || _loc2_)
                     {
                        §§push(this._view);
                        if(!_loc2_)
                        {
                           §§pop().setSize(FIELD_MIN_SIZE.width,FIELD_MIN_SIZE.height);
                           if(_loc1_ || Boolean(this))
                           {
                              §§push(this._view);
                              if(_loc1_ || _loc1_)
                              {
                                 addr0094:
                                 §§push(false);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    addr00a2:
                                    §§pop().limitRangeOfMotion = §§pop();
                                    if(_loc1_)
                                    {
                                       addr00aa:
                                       §§push(this._view);
                                       if(_loc1_)
                                       {
                                          addr00b4:
                                          §§pop().usePreciseValues = true;
                                          addr00b3:
                                          if(!_loc2_)
                                          {
                                             §§push(this._playfieldProxy);
                                             if(_loc1_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc2_ && Boolean(this)))
                                                {
                                                   var _temp_8:* = §§pop();
                                                   §§push(_temp_8);
                                                   if(_temp_8)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         §§pop();
                                                         if(_loc1_ || Boolean(this))
                                                         {
                                                            addr00f2:
                                                            addr00ef:
                                                            addr00eb:
                                                            if(Boolean(this._playfieldProxy.config))
                                                            {
                                                               if(!(_loc2_ && Boolean(this)))
                                                               {
                                                                  addr0111:
                                                                  this._view.centerOnPt(HorizionSettingsVo.centerPoint(this._playfieldProxy.config.gfxId),false);
                                                                  addr010d:
                                                                  if(!(_loc2_ && Boolean(this)))
                                                                  {
                                                                     addr0133:
                                                                     sendNotification(ApplicationNotificationConstants.FIELD_VIEW_NEW,this._view);
                                                                  }
                                                               }
                                                               §§goto(addr0142);
                                                            }
                                                         }
                                                         §§goto(addr0133);
                                                      }
                                                   }
                                                }
                                                §§goto(addr00f2);
                                             }
                                             §§goto(addr00ef);
                                          }
                                          §§goto(addr010d);
                                       }
                                       §§goto(addr0111);
                                    }
                                    §§goto(addr0142);
                                 }
                                 §§goto(addr00b4);
                              }
                              §§goto(addr00b3);
                           }
                           addr0142:
                           return;
                        }
                        §§goto(addr0094);
                     }
                     §§goto(addr00eb);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0111);
            }
            §§goto(addr00eb);
         }
         §§goto(addr00aa);
      }
      
      private function createViewControls() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this._mouseWheelZoomControl = new MouseWheelZoomControl(this._view,this.backGroundLayer);
            if(!_loc2_)
            {
               §§goto(addr0036);
            }
            §§goto(addr00b4);
         }
         addr0036:
         this._mouseDragFieldMoveControl = new MouseDragFieldMoveControl(this._view,this.backGroundLayer);
         if(_loc1_ || _loc1_)
         {
            this._mouseClickFieldControl = new MouseClickFieldControl(this._view,this._view);
            if(_loc1_)
            {
               this._mouseClickFieldControl.addEventListener(MouseClickFieldControl.ON_FIELD_CLICK,this.onFieldClick);
               if(_loc1_ || Boolean(this))
               {
                  §§goto(addr00a2);
               }
               §§goto(addr00b4);
            }
         }
         addr00a2:
         this._mouseDragFieldMoveControl.flexLayer = this.parallelLayer;
         if(!_loc2_)
         {
            addr00b4:
            this._view.addEventListener(Event.ENTER_FRAME,this.onMouseMove);
         }
      }
      
      private function onFieldClick(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            sendNotification(ApplicationNotificationConstants.FIELD_CLICK);
            if(_loc2_ || Boolean(this))
            {
               addr0044:
               sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
            }
            return;
         }
         §§goto(addr0044);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS,ApplicationNotificationConstants.FIELD_GENERATED,OptionsMenuNavigationConstants.TOGGLE_ZOOM_IN,OptionsMenuNavigationConstants.TOGGLE_ZOOM_OUT,ApplicationNotificationConstants.PERFORMANCE_FRAMERATE_REPORT,ApplicationNotificationConstants.RENDER_TICK,ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PLAYFIELD_RESOURCES,ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE_PLAYFIELD_RESOURCES,ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE,ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE,ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_IN,ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_OUT,ApplicationNotificationConstants.FIELD_PANTO,ApplicationNotificationConstants.FIELD_CENTER_ON_POINT,ApplicationNotificationConstants.FIELD_RESET,ApplicationNotificationConstants.ENABLE_USER_INTERACTION,ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER,ApplicationNotificationConstants.TIMESTAMP_SET
         ,ApplicationNotificationConstants.UPDATE_VIEWPORT,ApplicationNotificationConstants.ADD_SCREENSHOT_TO_FOREGROUND,ApplicationNotificationConstants.SHOW_PLAYFIELD_LOADING_ANIMATION,ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION,ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:ParticleEmitterDecorator = null;
         var _loc6_:ParticleEmitterDecorator = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = false;
         var _loc11_:FieldInfoLayerProxy = null;
         var _loc12_:ConfigGroundRestrictionDTO = null;
         var _loc13_:DisplayObject = null;
         var _loc14_:BitmapData = null;
         §§push(param1.getName());
         if(!(_loc17_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc15_:* = _loc2_;
         if(_loc18_ || _loc3_)
         {
            §§push(ApplicationNotificationConstants.LAYOUT_NEW_DIMENSIONS);
            if(_loc18_)
            {
               §§push(_loc15_);
               if(_loc18_ || Boolean(this))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc17_ && _loc2_))
                     {
                        §§push(0);
                        if(_loc18_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr08f4:
                        §§push(4);
                        if(_loc18_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ApplicationNotificationConstants.UPDATE_VIEWPORT);
                     if(_loc18_ || _loc3_)
                     {
                        §§push(_loc15_);
                        if(!_loc17_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(_loc18_)
                              {
                                 §§push(1);
                                 if(_loc17_ && _loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 addr0ca7:
                                 §§push(21);
                                 if(_loc18_ || Boolean(param1))
                                 {
                                 }
                              }
                           }
                           else
                           {
                              §§push(ApplicationNotificationConstants.FIELD_GENERATED);
                              if(_loc18_ || _loc3_)
                              {
                                 addr0866:
                                 §§push(_loc15_);
                                 if(_loc18_ || Boolean(this))
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc18_ || _loc3_)
                                       {
                                          §§push(2);
                                          if(_loc17_)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          addr0c6d:
                                          §§push(20);
                                          if(_loc17_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(OptionsMenuNavigationConstants.TOGGLE_ZOOM_OUT);
                                       if(_loc18_)
                                       {
                                          §§push(_loc15_);
                                          if(_loc18_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc17_)
                                                {
                                                   §§push(3);
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr0c6d);
                                                }
                                             }
                                             else
                                             {
                                                §§push(OptionsMenuNavigationConstants.TOGGLE_ZOOM_IN);
                                                if(!_loc17_)
                                                {
                                                   addr08d2:
                                                   §§push(_loc15_);
                                                   if(_loc18_ || _loc3_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         if(!(_loc17_ && Boolean(this)))
                                                         {
                                                            §§goto(addr08f4);
                                                         }
                                                         else
                                                         {
                                                            addr0a84:
                                                            §§push(11);
                                                            if(_loc17_)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(ApplicationNotificationConstants.RENDER_TICK);
                                                         if(_loc18_)
                                                         {
                                                            §§push(_loc15_);
                                                            if(!(_loc17_ && Boolean(this)))
                                                            {
                                                               if(§§pop() === §§pop())
                                                               {
                                                                  if(_loc18_ || _loc2_)
                                                                  {
                                                                     §§push(5);
                                                                     if(_loc18_ || Boolean(this))
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr09a8:
                                                                     §§push(7);
                                                                     if(_loc17_)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(ApplicationNotificationConstants.PERFORMANCE_FRAMERATE_REPORT);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(_loc15_);
                                                                     if(_loc18_ || Boolean(this))
                                                                     {
                                                                        addr095d:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(6);
                                                                              if(_loc18_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0b58:
                                                                              §§push(15);
                                                                              if(_loc18_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_SHOW_PLAYFIELD_RESOURCES);
                                                                           if(_loc18_ || _loc2_)
                                                                           {
                                                                              §§push(_loc15_);
                                                                              if(!(_loc17_ && _loc2_))
                                                                              {
                                                                                 addr0996:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc18_ || _loc3_)
                                                                                    {
                                                                                       §§goto(addr09a8);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0bfb:
                                                                                       §§push(18);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE_PLAYFIELD_RESOURCES);
                                                                                    if(_loc18_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc15_);
                                                                                       if(!(_loc17_ && Boolean(param1)))
                                                                                       {
                                                                                          addr09d7:
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§push(8);
                                                                                                if(_loc17_ && _loc2_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr0b58);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(ApplicationNotificationConstants.RENEW_EXPANSION_SALE_MARKER);
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(_loc15_);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      if(!(_loc17_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§push(9);
                                                                                                         if(_loc17_ && Boolean(this))
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr0c6d);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(ApplicationNotificationConstants.TIMESTAMP_SET);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(_loc15_);
                                                                                                         if(_loc18_ || _loc2_)
                                                                                                         {
                                                                                                            if(§§pop() === §§pop())
                                                                                                            {
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  §§push(10);
                                                                                                                  if(_loc17_ && _loc3_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr0aee:
                                                                                                                  §§push(13);
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(ApplicationNotificationConstants.PLAYER_UNLOCKED_FEATURES_CHANGED);
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(_loc15_);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     addr0a7a:
                                                                                                                     if(§§pop() === §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           §§goto(addr0a84);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr0bc2:
                                                                                                                           §§push(17);
                                                                                                                           if(_loc17_ && _loc3_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(ApplicationNotificationConstants.ANIMATION_LAYER_ADD_PARTICLE);
                                                                                                                        if(!_loc17_)
                                                                                                                        {
                                                                                                                           addr0a9b:
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop() === §§pop())
                                                                                                                              {
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    §§push(12);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr0ca7);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(ApplicationNotificationConstants.ANIMATION_LAYER_REMOVE_PARTICLE);
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                    if(!(_loc17_ && Boolean(param1)))
                                                                                                                                    {
                                                                                                                                       addr0adc:
                                                                                                                                       if(§§pop() === §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr0aee);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr0b1f:
                                                                                                                                             §§push(14);
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(ApplicationNotificationConstants.FIELD_PANTO);
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             addr0b0d:
                                                                                                                                             §§push(_loc15_);
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                addr0b15:
                                                                                                                                                if(§§pop() === §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0b1f);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr0b58);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(ApplicationNotificationConstants.FIELD_CENTER_ON_POINT);
                                                                                                                                                   if(!(_loc17_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr0b3e:
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      if(_loc18_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr0b4e:
                                                                                                                                                         if(§§pop() === §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!_loc17_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0b58);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr0bc2);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§push(ApplicationNotificationConstants.FIELD_RESET);
                                                                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               addr0b77:
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  addr0b7f:
                                                                                                                                                                  if(§§pop() === §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(16);
                                                                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr0bc2);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§push(ApplicationNotificationConstants.ENABLE_USER_INTERACTION);
                                                                                                                                                                     if(!_loc17_)
                                                                                                                                                                     {
                                                                                                                                                                        addr0ba8:
                                                                                                                                                                        §§push(_loc15_);
                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                        {
                                                                                                                                                                           addr0bb0:
                                                                                                                                                                           if(§§pop() === §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0bc2);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0c6d);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_IN);
                                                                                                                                                                              if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc15_);
                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() === §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0bfb);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr0ca7);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(ApplicationNotificationConstants.ANIMATION_WHITE_BLEND_OUT);
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr0c12:
                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                          if(!(_loc17_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr0c22:
                                                                                                                                                                                             if(§§pop() === §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc18_ || Boolean(param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(19);
                                                                                                                                                                                                   if(_loc17_ && Boolean(param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0cd3:
                                                                                                                                                                                                   §§push(22);
                                                                                                                                                                                                   if(_loc18_ || Boolean(param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0cf3);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(ApplicationNotificationConstants.ADD_SCREENSHOT_TO_FOREGROUND);
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr0c53:
                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr0c5b:
                                                                                                                                                                                                      if(§§pop() === §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc17_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr0c6d);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr0cd3);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(ApplicationNotificationConstants.SHOW_PLAYFIELD_LOADING_ANIMATION);
                                                                                                                                                                                                         if(!_loc17_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr0c85:
                                                                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                                                                            if(_loc18_ || Boolean(param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr0c95:
                                                                                                                                                                                                               if(§§pop() === §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc17_ && Boolean(this)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr0ca7);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr0cd3);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr0ccf);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr0cd3);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr0ccf:
                                                                                                                                                                                                            §§goto(addr0ccd);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr0ccd:
                                                                                                                                                                                                         if(ApplicationNotificationConstants.HIDE_PLAYFIELD_LOADING_ANIMATION === _loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr0cd3);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(23);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0cf3);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr0cd3);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr0ccf);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr0c85);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0c95);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr0c85);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0cf3);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0c95);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0c53);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0cf3);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0c5b);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0ccd);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr0cf3);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr0c22);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0ccd);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0cf3);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr0ccf);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr0c12);
                                                                                                                                                }
                                                                                                                                                §§goto(addr0cf3);
                                                                                                                                             }
                                                                                                                                             §§goto(addr0bb0);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0ba8);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0cf3);
                                                                                                                                    }
                                                                                                                                    §§goto(addr0b7f);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0b77);
                                                                                                                              }
                                                                                                                              §§goto(addr0cf3);
                                                                                                                           }
                                                                                                                           §§goto(addr0c95);
                                                                                                                        }
                                                                                                                        §§goto(addr0b0d);
                                                                                                                     }
                                                                                                                     §§goto(addr0cf3);
                                                                                                                  }
                                                                                                                  §§goto(addr0b4e);
                                                                                                               }
                                                                                                               §§goto(addr0c53);
                                                                                                            }
                                                                                                            §§goto(addr0cf3);
                                                                                                         }
                                                                                                         §§goto(addr0c95);
                                                                                                      }
                                                                                                      §§goto(addr0c12);
                                                                                                   }
                                                                                                   §§goto(addr0cf3);
                                                                                                }
                                                                                                §§goto(addr0b15);
                                                                                             }
                                                                                             §§goto(addr0c12);
                                                                                          }
                                                                                          §§goto(addr0cf3);
                                                                                       }
                                                                                       §§goto(addr0c22);
                                                                                    }
                                                                                    §§goto(addr0b0d);
                                                                                 }
                                                                                 §§goto(addr0cf3);
                                                                              }
                                                                              §§goto(addr0bb0);
                                                                           }
                                                                           §§goto(addr0a9b);
                                                                        }
                                                                        §§goto(addr0cf3);
                                                                     }
                                                                     §§goto(addr09d7);
                                                                  }
                                                                  §§goto(addr0b3e);
                                                               }
                                                               §§goto(addr0cf3);
                                                            }
                                                            §§goto(addr0ccf);
                                                         }
                                                         §§goto(addr0c85);
                                                      }
                                                      §§goto(addr0cf3);
                                                   }
                                                   §§goto(addr0a7a);
                                                }
                                                §§goto(addr0b77);
                                             }
                                             §§goto(addr0cf3);
                                          }
                                          §§goto(addr0c22);
                                       }
                                       §§goto(addr0ccd);
                                    }
                                    §§goto(addr0cf3);
                                 }
                                 §§goto(addr0996);
                              }
                              §§goto(addr0c85);
                           }
                           §§goto(addr0cf3);
                        }
                        §§goto(addr095d);
                     }
                     §§goto(addr08d2);
                  }
                  addr0cf3:
                  loop0:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           §§push(this._view);
                           if(!(_loc17_ && Boolean(param1)))
                           {
                              §§pop().setSize(this._layoutProxy.width,this._layoutProxy.height);
                              if(!_loc17_)
                              {
                                 §§push(this._mouseDragFieldMoveControl);
                                 if(!(_loc17_ && Boolean(this)))
                                 {
                                    §§pop().showPosition(new Pt(this._view.currentX,this._view.currentY));
                                    if(_loc17_ && Boolean(param1))
                                    {
                                    }
                                    break loop0;
                                 }
                              }
                              else
                              {
                                 addr00fe:
                                 this._view.addScene(param1.getBody() as IsoScene);
                                 addr00fa:
                                 if(_loc18_ || Boolean(param1))
                                 {
                                    addr0119:
                                    this._isoScene = param1.getBody() as IsoScene;
                                    if(_loc17_ && _loc2_)
                                    {
                                       break loop0;
                                    }
                                 }
                                 this.fieldLayer.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                                 if(!(_loc17_ && _loc3_))
                                 {
                                    this.fieldLayer.addChild(this._view);
                                    if(!(_loc17_ && _loc3_))
                                    {
                                       _loc11_ = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
                                       _loc11_.isoView = this._view;
                                    }
                                    break loop0;
                                 }
                                 addr0206:
                                 this._mouseWheelZoomControl.toggleBetterPerformance(_loc3_);
                                 addr0202:
                                 if(!(_loc18_ || _loc2_))
                                 {
                                    addr0468:
                                    _loc5_ = param1.getBody() as ParticleEmitterDecorator;
                                    if(_loc18_ || Boolean(param1))
                                    {
                                       §§push(this._particleSystem);
                                       if(!(_loc17_ && Boolean(param1)))
                                       {
                                          §§pop().addEmitter(_loc5_);
                                          if(_loc17_ && _loc3_)
                                          {
                                          }
                                          break loop0;
                                       }
                                       addr04b3:
                                       if(§§pop() == null)
                                       {
                                          break loop0;
                                       }
                                       _loc6_ = param1.getBody() as ParticleEmitterDecorator;
                                       if(_loc18_ || _loc3_)
                                       {
                                          this._particleSystem.removeEmitter(_loc6_);
                                          if(!_loc17_)
                                          {
                                             break loop0;
                                          }
                                       }
                                       break;
                                    }
                                    break loop0;
                                 }
                                 §§push(this._mouseDragFieldMoveControl);
                              }
                              §§pop().toggleBetterPerformance(_loc3_);
                              if(_loc17_ && _loc3_)
                              {
                              }
                              break loop0;
                           }
                           §§goto(addr00fe);
                        case 1:
                           this.setMovementBounds();
                           if(!(_loc17_ && Boolean(param1)))
                           {
                              break loop0;
                           }
                           §§goto(addr0119);
                           break;
                        case 2:
                           if(!param1.getBody())
                           {
                              break loop0;
                           }
                           if(!(_loc18_ || Boolean(param1)))
                           {
                              break loop0;
                           }
                           §§goto(addr00fa);
                           break;
                        case 3:
                           §§push(this._mouseWheelZoomControl);
                           if(!(_loc17_ && _loc2_))
                           {
                              §§pop().zoomOut();
                              if(_loc18_)
                              {
                                 break loop0;
                              }
                              addr0404:
                              this._resourceMarker.length = 0;
                              if(_loc18_ || Boolean(this))
                              {
                              }
                              break loop0;
                           }
                           addr01c0:
                           §§pop().zoomIn();
                           if(_loc17_ && _loc2_)
                           {
                           }
                           break loop0;
                        case 4:
                           §§push(this._mouseWheelZoomControl);
                           if(!(_loc17_ && Boolean(this)))
                           {
                              §§goto(addr01c0);
                           }
                           else
                           {
                              §§goto(addr0206);
                           }
                        case 5:
                           if(!this._isoScene)
                           {
                              break loop0;
                           }
                           if(_loc18_ || Boolean(this))
                           {
                              break loop0;
                           }
                           §§goto(addr0468);
                           break;
                        case 6:
                           _loc3_ = param1.getBody() as Boolean;
                           if(!_loc18_)
                           {
                              break loop0;
                           }
                           §§goto(addr0202);
                           break;
                        case 7:
                           §§push(0);
                           if(_loc18_)
                           {
                              _loc15_ = §§pop();
                              if(!_loc17_)
                              {
                                 var _loc16_:* = this._configProxy.config.restrictions;
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc16_,_loc15_));
                                    if(_loc17_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       if(!_loc17_)
                                       {
                                          if(!(_loc17_ && _loc2_))
                                          {
                                             if(_loc18_)
                                             {
                                             }
                                             break loop0;
                                          }
                                          addr03f3:
                                          addr0372:
                                          _loc16_ = this._resourceMarker;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc16_,_loc15_));
                                             break loop2;
                                          }
                                       }
                                       addr03fa:
                                    }
                                    else
                                    {
                                       _loc12_ = §§nextvalue(_loc15_,_loc16_);
                                       if(_loc12_.playfieldId != this._playfieldProxy.config.id)
                                       {
                                          continue;
                                       }
                                       if(_loc18_ || Boolean(param1))
                                       {
                                          §§push(_loc12_.groundType);
                                          if(!_loc17_)
                                          {
                                             §§push(ServerRestrictionConstants.CLAYPIT);
                                             if(_loc18_ || _loc2_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc18_ || Boolean(this))
                                                {
                                                   var _temp_71:* = §§pop();
                                                   §§push(_temp_71);
                                                   §§push(_temp_71);
                                                   if(!(_loc17_ && Boolean(param1)))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc17_ && _loc2_))
                                                         {
                                                            §§pop();
                                                            if(!_loc18_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(_loc12_.groundType);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(ServerRestrictionConstants.SPRING);
                                                               if(!(_loc17_ && Boolean(param1)))
                                                               {
                                                                  addr02f3:
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr02fa:
                                                                     var _temp_75:* = §§pop();
                                                                     addr02fb:
                                                                     §§push(_temp_75);
                                                                     if(!_temp_75)
                                                                     {
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr0305:
                                                                           §§pop();
                                                                           if(!(_loc17_ && Boolean(this)))
                                                                           {
                                                                              addr0320:
                                                                              addr031f:
                                                                              addr0319:
                                                                              if(_loc12_.groundType != ServerRestrictionConstants.FISHINGGROUND)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc18_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           addr032a:
                                                                           this.addResourceInfo(_loc12_);
                                                                           continue;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr0320);
                                                               }
                                                               §§goto(addr031f);
                                                            }
                                                            §§goto(addr0319);
                                                         }
                                                         §§goto(addr0305);
                                                      }
                                                      §§goto(addr02fa);
                                                   }
                                                   §§goto(addr02fb);
                                                }
                                                §§goto(addr02fa);
                                             }
                                             §§goto(addr02f3);
                                          }
                                          §§goto(addr0319);
                                       }
                                       §§goto(addr032a);
                                    }
                                 }
                                 while(§§pop())
                                 {
                                    _loc13_ = §§nextvalue(_loc15_,_loc16_);
                                    if(_loc18_ || Boolean(param1))
                                    {
                                       §§push(this._view);
                                       if(!(_loc17_ && Boolean(param1)))
                                       {
                                          if(§§pop().foregroundContainer.contains(_loc13_))
                                          {
                                             if(!(_loc17_ && Boolean(param1)))
                                             {
                                                addr03c2:
                                                §§push(this._view);
                                                if(!_loc17_)
                                                {
                                                   addr03cc:
                                                   _loc4_ = int(§§pop().foregroundContainer.getChildIndex(_loc13_));
                                                   if(!(_loc17_ && _loc3_))
                                                   {
                                                      addr03ea:
                                                      this._view.foregroundContainer.removeChildAt(_loc4_);
                                                   }
                                                   §§goto(addr03f3);
                                                }
                                                §§goto(addr03ea);
                                             }
                                          }
                                          §§goto(addr03f3);
                                       }
                                       §§goto(addr03cc);
                                    }
                                    §§goto(addr03c2);
                                 }
                                 §§goto(addr03fa);
                              }
                           }
                           else
                           {
                              addr036a:
                              _loc15_ = §§pop();
                              if(!_loc17_)
                              {
                                 §§goto(addr0372);
                              }
                           }
                           if(!_loc17_)
                           {
                              §§goto(addr0404);
                           }
                           else
                           {
                              addr044f:
                              this._particleSystem = new ParticleSystem();
                              if(!(_loc18_ || Boolean(param1)))
                              {
                                 break loop0;
                              }
                              §§goto(addr0468);
                           }
                        case 8:
                           §§push(0);
                           if(_loc18_)
                           {
                              §§goto(addr036a);
                              break;
                           }
                           continue;
                        case 9:
                        case 10:
                        case 11:
                           this.renewExpansionSaleMarker();
                           if(_loc17_ && _loc3_)
                           {
                           }
                           break loop0;
                        case 12:
                           if(this._particleSystem == null)
                           {
                              if(_loc18_ || Boolean(param1))
                              {
                                 §§goto(addr044f);
                              }
                           }
                           §§goto(addr0468);
                        case 13:
                           §§goto(addr04b3);
                           §§push(this._particleSystem);
                        case 14:
                           this.animatedPanTo(Point(param1.getBody()));
                           if(!_loc17_)
                           {
                              break loop0;
                           }
                           addr05c7:
                           §§push(this._view);
                           if(!_loc17_)
                           {
                              addr05d1:
                              §§pop().reset();
                              if(_loc18_)
                              {
                                 break;
                              }
                              break loop0;
                           }
                           addr05df:
                           §§pop().currentZoom = _loc9_;
                           if(_loc18_ || Boolean(param1))
                           {
                              this._mouseDragFieldMoveControl.showPosition(new Pt(_loc7_,_loc8_));
                              if(_loc17_ && Boolean(this))
                              {
                              }
                           }
                           break loop0;
                        case 15:
                           §§push(this._view);
                           if(_loc18_)
                           {
                              §§pop().centerOnPt(param1.getBody() as Pt,false);
                              if(!_loc17_)
                              {
                                 this._mouseWheelZoomControl.adjustField();
                                 if(_loc17_ && _loc2_)
                                 {
                                 }
                              }
                              break loop0;
                           }
                           addr0549:
                           §§push(§§pop().currentX);
                           if(_loc18_)
                           {
                              §§push(§§pop());
                              if(!(_loc17_ && Boolean(param1)))
                              {
                                 _loc7_ = §§pop();
                                 if(!(_loc17_ && Boolean(param1)))
                                 {
                                    §§push(this._view);
                                    if(_loc18_ || Boolean(this))
                                    {
                                       §§push(§§pop().currentY);
                                       if(!_loc17_)
                                       {
                                          §§push(§§pop());
                                          if(_loc18_ || Boolean(this))
                                          {
                                             addr059b:
                                             _loc8_ = §§pop();
                                             if(_loc18_)
                                             {
                                                §§push(this._view);
                                                if(!(_loc17_ && Boolean(this)))
                                                {
                                                   §§push(§§pop().currentZoom);
                                                   if(_loc18_)
                                                   {
                                                      addr05be:
                                                      §§push(§§pop());
                                                   }
                                                   _loc9_ = §§pop();
                                                   if(_loc17_)
                                                   {
                                                      break loop0;
                                                   }
                                                   §§goto(addr05c7);
                                                }
                                                §§goto(addr05d1);
                                             }
                                             else
                                             {
                                                addr06a9:
                                                _loc14_ = new BitmapData(viewComponent.width,viewComponent.height,true,0);
                                                _loc14_.lock();
                                                if(_loc17_ && Boolean(param1))
                                                {
                                                   break loop0;
                                                }
                                                _loc14_.draw(viewComponent as MainView);
                                                if(_loc18_ || _loc2_)
                                                {
                                                   _loc14_.unlock();
                                                   if(!(_loc17_ && Boolean(param1)))
                                                   {
                                                      this._bmp = new Bitmap(_loc14_);
                                                      if(_loc18_ || Boolean(this))
                                                      {
                                                         TweenMax.to(this._bmp,1,{"colorTransform":{
                                                            "tint":0,
                                                            "tintAmount":0.6
                                                         }});
                                                         if(_loc17_)
                                                         {
                                                            break loop0;
                                                         }
                                                         addr0746:
                                                         this.animationLayer.addChild(this._bmp);
                                                         if(_loc18_ || Boolean(param1))
                                                         {
                                                            break loop0;
                                                         }
                                                      }
                                                      addr079f:
                                                      this.createPlayfieldAnimation();
                                                      if(_loc17_ && _loc2_)
                                                      {
                                                      }
                                                   }
                                                   break loop0;
                                                }
                                                §§goto(addr0746);
                                             }
                                          }
                                       }
                                       §§goto(addr05be);
                                    }
                                    §§goto(addr05df);
                                 }
                                 §§goto(addr05c7);
                              }
                              §§goto(addr059b);
                           }
                           §§goto(addr05be);
                           break;
                        case 16:
                           §§push(this._view);
                           if(!_loc17_)
                           {
                              §§goto(addr0549);
                           }
                           §§goto(addr05df);
                        case 17:
                           this.enableMainView = Boolean(param1.getBody());
                           if(_loc17_ && _loc2_)
                           {
                           }
                           break loop0;
                        case 18:
                           this.blendInWhiteLayer();
                           if(!(_loc17_ && Boolean(this)))
                           {
                              break loop0;
                           }
                           addr0773:
                           this.animationLayer.removeChild(this._bmp);
                           break loop0;
                        case 19:
                           this._blendOut = true;
                           if(!(_loc17_ && _loc2_))
                           {
                              this.blendOutWhiteLayer();
                              if(_loc17_ && _loc2_)
                              {
                              }
                              break loop0;
                           }
                           §§goto(addr0773);
                           break;
                        case 20:
                           §§push(Boolean(param1.getBody()));
                           if(_loc18_)
                           {
                              _loc10_ = §§pop();
                              §§push(_loc10_);
                           }
                           if(§§pop())
                           {
                              if(!(_loc18_ || _loc3_))
                              {
                                 break loop0;
                              }
                              §§goto(addr06a9);
                           }
                           else
                           {
                              if(this._bmp == null)
                              {
                                 break loop0;
                              }
                              if(!_loc18_)
                              {
                                 break loop0;
                              }
                              §§goto(addr0773);
                           }
                        case 21:
                           this._pfGfxId = param1.getBody().toString();
                           if(!(_loc18_ || _loc2_))
                           {
                              break loop0;
                           }
                           §§goto(addr079f);
                           break;
                        case 22:
                           this.killPlayfieldAnimation();
                           break loop0;
                        default:
                           break loop0;
                     }
                     §§goto(addr05df);
                  }
                  return;
               }
               §§goto(addr0adc);
            }
            §§goto(addr0866);
         }
         §§goto(addr0cd3);
      }
      
      private function createPlayfieldAnimation() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(this._playfieldAnimationKillRequest)
            {
               if(_loc2_)
               {
                  addr002c:
                  this._playfieldAnimationKillRequest = false;
                  if(!_loc2_)
                  {
                     addr00f3:
                     var _loc1_:* = this._pfGfxId;
                     if(_loc2_ || Boolean(_loc1_))
                     {
                        §§push("100");
                        if(_loc2_)
                        {
                           §§push(_loc1_);
                           if(_loc2_ || _loc2_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(1);
                                    if(_loc2_ || Boolean(this))
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr0176:
                                    §§push(2);
                                    if(_loc3_)
                                    {
                                    }
                                 }
                              }
                              else
                              {
                                 §§push("101");
                                 if(!_loc3_)
                                 {
                                    §§push(_loc1_);
                                    if(!(_loc3_ && Boolean(_loc1_)))
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§goto(addr0176);
                                          }
                                          else
                                          {
                                             addr01c5:
                                             §§push(4);
                                             if(_loc2_ || _loc3_)
                                             {
                                             }
                                          }
                                          §§goto(addr01da);
                                       }
                                       else
                                       {
                                          §§push("102");
                                          if(!(_loc3_ && Boolean(this)))
                                          {
                                             §§push(_loc1_);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr01a9:
                                                      §§push(3);
                                                      if(_loc2_ || Boolean(_loc1_))
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr01c5);
                                                   }
                                                   §§goto(addr01da);
                                                }
                                                else
                                                {
                                                   §§goto(addr01c1);
                                                }
                                             }
                                             addr01c1:
                                          }
                                          §§goto(addr01c0);
                                       }
                                    }
                                    §§goto(addr01c1);
                                 }
                                 addr01c0:
                                 if("103" === _loc1_)
                                 {
                                    §§goto(addr01c5);
                                 }
                                 else
                                 {
                                    §§push(0);
                                 }
                                 §§goto(addr01da);
                              }
                              addr01da:
                              switch(§§pop())
                              {
                                 case 2:
                                    this._playfieldAnimation = new BitmapClip(new playfield_loading_animation_101(),"playfieldloadring" + this._pfGfxId,12,false);
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       addr01f5:
                                       §§push(this._playfieldAnimation);
                                       if(_loc2_)
                                       {
                                          §§pop().stop();
                                          if(_loc2_)
                                          {
                                             addr0207:
                                             §§push(this._playfieldAnimation);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(FlexGlobals.topLevelApplication.stage.stageWidth / 2);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr0245:
                                                      §§push(this._playfieldAnimation);
                                                      if(!(_loc3_ && Boolean(_loc1_)))
                                                      {
                                                         addr0267:
                                                         §§pop().y = FlexGlobals.topLevelApplication.stage.stageHeight / 2;
                                                         if(_loc3_ && _loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this._playfieldAnimation);
                                                         if(_loc2_)
                                                         {
                                                            addr028c:
                                                            §§pop().fps = 12;
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            addr0296:
                                                            this.animationLayer.addChild(this._playfieldAnimation);
                                                            if(!(_loc2_ || Boolean(this)))
                                                            {
                                                               break;
                                                            }
                                                            §§push(this._playfieldAnimation);
                                                         }
                                                      }
                                                      §§pop().play();
                                                      break;
                                                   }
                                                   §§goto(addr0296);
                                                }
                                                §§goto(addr0267);
                                             }
                                             §§goto(addr028c);
                                          }
                                          §§goto(addr0245);
                                       }
                                       §§goto(addr028c);
                                    }
                                    §§goto(addr0245);
                                 case 3:
                                    this._playfieldAnimation = new BitmapClip(new playfield_loading_animation_102(),"playfieldloadring" + this._pfGfxId,12,false);
                                    if(_loc2_ || Boolean(_loc1_))
                                    {
                                       §§goto(addr01f5);
                                    }
                                    §§goto(addr0207);
                                 case 4:
                                    this._playfieldAnimation = new BitmapClip(new playfield_loading_animation_103(),"playfieldloadring" + this._pfGfxId,12,false);
                                    if(_loc3_)
                                    {
                                    }
                                    §§goto(addr01f5);
                                 default:
                                    this._playfieldAnimation = new BitmapClip(new playfield_loading_animation_100(),"playfieldloadring" + this._pfGfxId,12,false);
                                    if(_loc2_ || Boolean(this))
                                    {
                                       §§goto(addr01f5);
                                    }
                                    §§goto(addr0245);
                              }
                              return;
                           }
                           §§goto(addr01c1);
                        }
                        §§goto(addr01c0);
                     }
                     §§goto(addr01a9);
                  }
               }
               return;
            }
            §§goto(addr00f3);
         }
         §§goto(addr002c);
      }
      
      private function killPlayfieldAnimation() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._playfieldAnimationKillRequest = true;
            if(_loc2_)
            {
               §§push(this._playfieldAnimation);
               if(_loc2_)
               {
                  if(§§pop() != null)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        this._playfieldAnimationKillRequest = false;
                        if(_loc2_)
                        {
                           §§push(this._playfieldAnimation);
                           if(!(_loc1_ && _loc1_))
                           {
                              §§pop().removeAfterPlay = true;
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 addr007f:
                                 this._playfieldAnimation.stop();
                                 addr007b:
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    this.animationLayer.removeChild(this._playfieldAnimation);
                                    if(_loc2_)
                                    {
                                       addr00a1:
                                       this._playfieldAnimation = null;
                                    }
                                 }
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr007f);
                        }
                        §§goto(addr00a1);
                     }
                  }
                  addr00a6:
                  return;
               }
               §§goto(addr007f);
            }
            §§goto(addr00a1);
         }
         §§goto(addr007b);
      }
      
      private function setMovementBounds() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._motionLimitSprite != null)
            {
               if(!(_loc2_ && Boolean(this)))
               {
                  §§push(this._view);
                  if(!_loc2_)
                  {
                     §§pop().backgroundContainer.removeChild(this._motionLimitSprite);
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr0055:
                        this._motionLimitSprite = new Sprite();
                        if(_loc1_)
                        {
                           addr0071:
                           this._view.backgroundContainer.addChild(this._motionLimitSprite);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr008a:
                              this._motionLimitSprite.graphics.beginFill(65535,0);
                              if(!(_loc2_ && _loc2_))
                              {
                                 this._motionLimitSprite.graphics.drawRect(this.horizonProxy.horizonSettings.offsetPoint.x,this.horizonProxy.horizonSettings.offsetPoint.y,this.maxWidthMotionLimit,this.maxHeightMotionLimit);
                                 addr00a6:
                                 if(_loc1_ || _loc1_)
                                 {
                                    addr00ee:
                                    this._motionLimitSprite.graphics.endFill();
                                 }
                                 §§goto(addr00f9);
                              }
                           }
                           §§goto(addr00ee);
                        }
                        §§goto(addr00f9);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr0071);
               }
               addr00f9:
               return;
            }
            §§goto(addr0055);
         }
         §§goto(addr008a);
      }
      
      private function blendInWhiteLayer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this._whiteSprite == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc1_ || _loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr0038);
                     }
                  }
               }
               §§goto(addr0052);
            }
            addr0038:
            §§pop();
            if(!(_loc2_ && Boolean(this)))
            {
               addr0052:
               if(this._whiteSprite.parent == this.animationLayer)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     this.animationLayer.removeChild(this._whiteSprite);
                     if(!_loc2_)
                     {
                        addr0074:
                        this._whiteSprite = new Sprite();
                        if(!(_loc2_ && _loc1_))
                        {
                           this._whiteSprite.graphics.beginFill(16777215,1);
                           if(!(_loc2_ && Boolean(this)))
                           {
                              addr00b0:
                              this._whiteSprite.graphics.drawRect(0,0,this._view.stage.stageWidth,this._view.stage.stageHeight);
                              if(_loc1_ || _loc2_)
                              {
                                 addr00df:
                                 this._whiteSprite.graphics.endFill();
                                 if(!_loc2_)
                                 {
                                    addr00ef:
                                    this._whiteSprite.alpha = 0;
                                    if(_loc1_)
                                    {
                                       this.animationLayer.addChild(this._whiteSprite);
                                       if(_loc1_)
                                       {
                                          addr0118:
                                          this._blendOut = false;
                                          if(!_loc2_)
                                          {
                                             §§goto(addr0122);
                                          }
                                       }
                                       §§goto(addr012c);
                                    }
                                    §§goto(addr0118);
                                 }
                                 §§goto(addr012c);
                              }
                           }
                           addr0122:
                           this._blendInComplete = false;
                           if(_loc1_)
                           {
                              addr012c:
                              TweenMax.to(this._whiteSprite,0.28,{
                                 "alpha":1,
                                 "onComplete":this.onCompleteWhiteBlend
                              });
                           }
                           §§goto(addr0147);
                        }
                        §§goto(addr00b0);
                     }
                     §§goto(addr00df);
                  }
                  §§goto(addr00ef);
               }
               §§goto(addr0074);
            }
            addr0147:
            return;
         }
         §§goto(addr00df);
      }
      
      private function onCompleteWhiteBlend() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this._blendInComplete = true;
            if(_loc2_ || Boolean(this))
            {
               addr003a:
               this.blendOutWhiteLayer();
            }
            return;
         }
         §§goto(addr003a);
      }
      
      private function blendOutWhiteLayer() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            §§push(this._blendOut);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop());
               if(!(_loc2_ && _loc2_))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(!_loc2_)
                     {
                        addr005a:
                        §§pop();
                        if(!_loc2_)
                        {
                           §§goto(addr006a);
                        }
                        §§goto(addr0073);
                     }
                  }
                  addr006a:
                  §§goto(addr0060);
               }
               §§goto(addr0069);
            }
            §§goto(addr005a);
         }
         addr0060:
         §§push(this._blendInComplete);
         if(!_loc2_)
         {
            addr0069:
            §§push(§§pop());
         }
         if(§§pop())
         {
            if(_loc1_)
            {
               addr0073:
               TweenMax.to(this._whiteSprite,0.2,{"alpha":0});
            }
         }
      }
      
      private function animatedPanTo(param1:Point) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            sendNotification(ApplicationNotificationConstants.FIELD_INFOLAYER_HIDE);
            if(!_loc3_)
            {
               addr0031:
               this._animatedPan = this._view.currentPt;
            }
            var _loc2_:Pt = IsoMath.isoToScreen(new Pt(param1.x * this._playfieldProxy.tileSize,param1.y * this._playfieldProxy.tileSize));
            if(_loc4_)
            {
               TweenMax.to(this._animatedPan,1,{
                  "x":_loc2_.x,
                  "y":_loc2_.y,
                  "onUpdate":this.animatedPanStepper,
                  "onComplete":this.animatedPanComplete,
                  "ease":Expo.easeOut
               });
            }
            return;
         }
         §§goto(addr0031);
      }
      
      private function animatedPanStepper() : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Pt = new Pt(this._animatedPan.x,this._animatedPan.y);
         if(!_loc2_)
         {
            this._mouseDragFieldMoveControl.showPosition(_loc1_);
         }
      }
      
      private function animatedPanComplete() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            facade.sendNotification(ApplicationNotificationConstants.FIELD_RESET);
         }
      }
      
      private function onMouseMove(param1:Event = null) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Point = new Point(this._view.mouseX,this._view.mouseY);
         if(_loc3_ || _loc3_)
         {
            this._capturePoint = this._view.localToIso(_loc2_);
            if(!(_loc4_ && Boolean(this)))
            {
               addr006b:
               this._playfieldProxy.mouse2dPoint = this._capturePoint;
            }
            return;
         }
         §§goto(addr006b);
      }
      
      private function set enableMainView(param1:Boolean) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:MainView = viewComponent as MainView;
         if(_loc4_)
         {
            _loc2_.mouseEnabled = _loc2_.mouseChildren = param1;
         }
      }
      
      private function get fieldLayer() : SpriteVisualElement
      {
         var _loc1_:MainView = viewComponent as MainView;
         return _loc1_.fieldlayer as SpriteVisualElement;
      }
      
      private function get parallelLayer() : Group
      {
         var _loc1_:MainView = viewComponent as MainView;
         return _loc1_.infoandIconLayer as Group;
      }
      
      private function get backGroundLayer() : Sprite
      {
         var _loc1_:MainView = viewComponent as MainView;
         return _loc1_.backgroundLayer as Sprite;
      }
      
      private function get animationLayer() : Sprite
      {
         var _loc1_:MainView = viewComponent as MainView;
         return _loc1_.animationlayer as Sprite;
      }
      
      public function get forgroundContainer() : Sprite
      {
         return this._view.foregroundContainer;
      }
      
      private function renewExpansionSaleMarker() : void
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc2_:FeatureProxy = null;
         var _loc3_:ExpansionFieldObjectVo = null;
         var _loc4_:Sprite = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Point = null;
         if(_loc11_)
         {
            this._view.foregroundContainer.mouseChildren = this._view.foregroundContainer.mouseEnabled = false;
         }
         var _loc1_:FieldInfoLayerProxy = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
         do
         {
            if(!this._expansionSaleMarker.length)
            {
               if(_loc11_)
               {
                  if(this._expansionSaleProxy.expansionSaleActive)
                  {
                     break;
                  }
                  §§goto(addr0252);
               }
               break;
            }
            this._view.foregroundContainer.removeChild(this._expansionSaleMarker.pop());
         }
         while(!(_loc12_ && Boolean(_loc1_)));
         
         _loc2_ = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
         if(!_loc12_)
         {
            if(_loc2_.isFeatureEnabled(ServerFeatureConstants.EXPANSION))
            {
               if(_loc11_)
               {
                  addr00d2:
                  var _loc8_:int = 0;
                  if(!_loc12_)
                  {
                     for each(_loc3_ in this._playfieldExpansionsProxy.validExpansionsInactive)
                     {
                        if(!_loc12_)
                        {
                           §§push(this._playfieldExpansionsProxy.isBuyableExpansions(_loc3_.configPlayfieldItemVo.id));
                           if(!_loc12_)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc11_)
                              {
                                 addr012f:
                                 if(!this._expansionSaleProxy.getIsExpansionOnSale(_loc3_.configOrigin))
                                 {
                                    continue;
                                 }
                              }
                              addr0133:
                              _loc4_ = new SaleMarker();
                              if(!(_loc12_ && Boolean(_loc2_)))
                              {
                                 this._expansionSaleMarker.push(_loc4_);
                                 if(_loc11_)
                                 {
                                    _loc4_.mouseEnabled = _loc4_.mouseChildren = false;
                                    if(!_loc12_)
                                    {
                                       addr0173:
                                       _loc4_.cacheAsBitmap = true;
                                       if(!_loc12_)
                                       {
                                          §§push(_loc3_.dimensions);
                                          if(_loc11_)
                                          {
                                             §§push((§§pop().x + 3) * this._playfieldProxy.tileSize);
                                             if(_loc11_)
                                             {
                                                §§push(35);
                                                if(_loc11_ || Boolean(_loc1_))
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc11_ || Boolean(_loc2_))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc12_ && Boolean(this)))
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc12_)
                                                         {
                                                            addr01d6:
                                                            addr01d2:
                                                            §§push((_loc3_.dimensions.y + 3) * this._playfieldProxy.tileSize);
                                                            if(!_loc12_)
                                                            {
                                                               addr01f3:
                                                               addr01e9:
                                                               addr01eb:
                                                               §§push(§§pop() - 30);
                                                               if(_loc11_)
                                                               {
                                                                  addr01f2:
                                                                  §§push(§§pop());
                                                               }
                                                               _loc6_ = §§pop();
                                                               addr01f5:
                                                               _loc7_ = _loc1_.isoToStage(_loc5_,_loc6_);
                                                               if(!(_loc12_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc4_.x = _loc7_.x;
                                                                  if(_loc11_)
                                                                  {
                                                                     _loc4_.y = _loc7_.y;
                                                                     if(!_loc11_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  this._view.foregroundContainer.addChild(_loc4_);
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr01f2);
                                                         }
                                                         §§goto(addr01f5);
                                                      }
                                                      §§goto(addr01f3);
                                                   }
                                                   §§goto(addr01e9);
                                                }
                                                §§goto(addr01eb);
                                             }
                                             §§goto(addr01e9);
                                          }
                                          §§goto(addr01d6);
                                       }
                                    }
                                    §§goto(addr01d2);
                                 }
                                 §§goto(addr0173);
                              }
                              §§goto(addr01f5);
                           }
                           §§goto(addr012f);
                        }
                        §§goto(addr0133);
                     }
                  }
               }
            }
            addr0252:
            return;
         }
         §§goto(addr00d2);
      }
      
      private function addResourceInfo(param1:ConfigGroundRestrictionDTO) : void
      {
         var _temp_1:* = true;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = _temp_1;
         var _loc2_:Sprite = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:ConfigGroundRestrictionShapePointDTO = null;
         var _loc6_:ConfigGroundRestrictionShapeDTO = null;
         var _loc7_:Array = null;
         var _loc8_:ConfigGroundRestrictionShapePointDTO = null;
         var _loc9_:FieldInfoLayerProxy = null;
         var _loc10_:Point = null;
         if(_loc16_)
         {
            if(param1.whiteList)
            {
               addr004e:
               for each(_loc6_ in param1.configGroundRestrictionShapes)
               {
                  if(_loc16_)
                  {
                     §§push(param1.groundType);
                     if(!(_loc15_ && Boolean(this)))
                     {
                        §§push(ServerRestrictionConstants.CLAYPIT);
                        if(_loc16_ || Boolean(_loc2_))
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc15_)
                              {
                                 _loc2_ = new ClaypitMarker();
                                 if(_loc16_ || Boolean(this))
                                 {
                                    addr0110:
                                    if(_loc2_ == null)
                                    {
                                       continue;
                                    }
                                    if(_loc16_)
                                    {
                                       _loc2_.mouseEnabled = _loc2_.mouseChildren = false;
                                       if(!(_loc15_ && Boolean(this)))
                                       {
                                          this._view.foregroundContainer.mouseChildren = this._view.foregroundContainer.mouseEnabled = false;
                                       }
                                    }
                                 }
                                 _loc7_ = new Array();
                                 if(!(_loc15_ && Boolean(_loc3_)))
                                 {
                                    var _loc13_:int = 0;
                                    if(!(_loc15_ && Boolean(_loc3_)))
                                    {
                                       for each(_loc8_ in _loc6_.shapePoints)
                                       {
                                          if(_loc16_)
                                          {
                                             _loc7_.push(_loc8_);
                                          }
                                       }
                                    }
                                 }
                                 _loc7_ = _loc7_.sortOn("shapePosition",Array.NUMERIC);
                                 _loc5_ = _loc7_[0];
                                 §§push(_loc5_.x * this._playfieldProxy.tileSize);
                                 if(!(_loc15_ && Boolean(_loc3_)))
                                 {
                                    §§push(§§pop());
                                    if(_loc16_)
                                    {
                                       addr01f9:
                                       _loc3_ = §§pop();
                                       if(_loc16_ || Boolean(this))
                                       {
                                          §§push(_loc5_.y * this._playfieldProxy.tileSize);
                                          if(_loc16_)
                                          {
                                             addr021a:
                                             §§push(§§pop());
                                          }
                                          _loc4_ = §§pop();
                                          if(!_loc15_)
                                          {
                                             this._view.foregroundContainer.addChild(_loc2_);
                                          }
                                       }
                                       _loc9_ = facade.retrieveProxy(FieldInfoLayerProxy.NAME) as FieldInfoLayerProxy;
                                       _loc10_ = _loc9_.isoToStage(_loc3_,_loc4_);
                                       if(_loc16_ || Boolean(_loc2_))
                                       {
                                          _loc2_.x = _loc10_.x - _loc2_.width / 2;
                                          if(!_loc16_)
                                          {
                                             continue;
                                          }
                                       }
                                       _loc2_.y = _loc10_.y - (this._playfieldProxy.tileSize + 5);
                                       if(!(_loc15_ && Boolean(_loc3_)))
                                       {
                                          this._resourceMarker.push(_loc2_);
                                       }
                                       continue;
                                    }
                                    §§goto(addr021a);
                                 }
                                 §§goto(addr01f9);
                              }
                              else
                              {
                                 addr0106:
                                 _loc2_ = new FishingGroundMarker();
                              }
                           }
                           else
                           {
                              §§push(param1.groundType);
                              if(!(_loc15_ && Boolean(param1)))
                              {
                                 §§push(ServerRestrictionConstants.SPRING);
                                 if(!_loc15_)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc15_ && Boolean(this)))
                                       {
                                          _loc2_ = new SpringMarker();
                                       }
                                       else
                                       {
                                          §§goto(addr0106);
                                       }
                                    }
                                    else
                                    {
                                       addr0102:
                                       addr00fc:
                                       if(param1.groundType == ServerRestrictionConstants.FISHINGGROUND)
                                       {
                                          §§goto(addr0106);
                                       }
                                    }
                                    §§goto(addr0110);
                                 }
                                 §§goto(addr0102);
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr0110);
                        }
                        §§goto(addr0102);
                     }
                     §§goto(addr00fc);
                  }
                  §§goto(addr0106);
               }
            }
            return;
         }
         §§goto(addr004e);
      }
      
      private function get horizonProxy() : HorizonProxy
      {
         return facade.retrieveProxy(HorizonProxy.NAME) as HorizonProxy;
      }
      
      private function get maxWidthMotionLimit() : Number
      {
         return HorizionSettingsVo.maxWidthMotionLimit(this._playfieldProxy.config.gfxId);
      }
      
      private function get maxHeightMotionLimit() : Number
      {
         return HorizionSettingsVo.maxHeightMotionLimit(this._playfieldProxy.config.gfxId);
      }
   }
}

