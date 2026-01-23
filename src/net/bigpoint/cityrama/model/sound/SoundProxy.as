package net.bigpoint.cityrama.model.sound
{
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FlashVarsProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsMenuProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadDynamicServiceProxy;
   import net.bigpoint.cityrama.model.sound.vo.SoundVo;
   import net.bigpoint.util.CityramaLogger;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class SoundProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "SoundProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         NAME = "SoundProxy";
      }
      
      private var _isBackgroundSoundOff:Boolean;
      
      private var _isSFXOff:Boolean;
      
      private var _backgroundSound:Sound;
      
      private var _soundsSFX:Dictionary;
      
      private var _optionsMenuProxy:OptionsMenuProxy;
      
      private var _flashVarsProxy:FlashVarsProxy;
      
      private var _soundTransform:SoundTransform;
      
      private var _fileRuntimeLoadServiceProxy:FileRuntimeLoadDynamicServiceProxy;
      
      private var _soundFilesLoaded:Boolean;
      
      public function SoundProxy(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            super(NAME,param1);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc1_:Array = null;
         var _loc2_:String = null;
         if(!(_loc4_ && _loc3_))
         {
            this._optionsMenuProxy = facade.retrieveProxy(OptionsMenuProxy.NAME) as OptionsMenuProxy;
            if(!(_loc4_ && Boolean(this)))
            {
               this._flashVarsProxy = facade.retrieveProxy(FlashVarsProxy.NAME) as FlashVarsProxy;
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr006a);
               }
               §§goto(addr00a5);
            }
            §§goto(addr00fe);
         }
         addr006a:
         this._soundsSFX = new Dictionary(true);
         if(_loc3_)
         {
            this._soundTransform = new SoundTransform(this._isSFXOff ? 1 : 0,0);
            if(_loc3_ || _loc3_)
            {
               this._fileRuntimeLoadServiceProxy = FileRuntimeLoadDynamicServiceProxy(facade.retrieveProxy(FileRuntimeLoadDynamicServiceProxy.NAME));
               addr00a5:
               if(!_loc4_)
               {
                  this._soundFilesLoaded = false;
                  if(!(_loc4_ && Boolean(_loc2_)))
                  {
                     addr00de:
                     if(!this._fileRuntimeLoadServiceProxy.service.libAllReadyLoaded("sounds_sounds"))
                     {
                        if(_loc3_ || Boolean(_loc1_))
                        {
                           addr00fe:
                           _loc1_ = ["sounds_sounds"];
                           if(!(_loc4_ && Boolean(_loc2_)))
                           {
                              _loc2_ = "preloadDoneNotification_SoundProxy";
                              if(_loc3_)
                              {
                                 §§push(this._fileRuntimeLoadServiceProxy);
                                 if(_loc3_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop().service);
                                    if(_loc3_ || Boolean(this))
                                    {
                                       §§pop().addEventListener(_loc2_,this.soundsReady);
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr0169:
                                          this._fileRuntimeLoadServiceProxy.service.checkSWFArrayLoaded(_loc1_,_loc2_);
                                          addr0166:
                                          addr0162:
                                       }
                                       §§goto(addr016f);
                                    }
                                    §§goto(addr0169);
                                 }
                                 §§goto(addr0166);
                              }
                              §§goto(addr0162);
                           }
                           addr016f:
                           this.isBackgroundSoundOff = OptionsGlobalVariables.getInstance().soundActive;
                           if(!(_loc4_ && Boolean(this)))
                           {
                              this.isSFXOff = OptionsGlobalVariables.getInstance().soundActive;
                           }
                        }
                        §§goto(addr0197);
                     }
                     §§goto(addr016f);
                  }
                  §§goto(addr00fe);
               }
            }
            §§goto(addr00de);
         }
         addr0197:
      }
      
      private function soundsReady(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._soundFilesLoaded = true;
            if(!_loc2_)
            {
               this.setupBackgroundSound();
               if(!_loc2_)
               {
                  addr002e:
                  this.isBackgroundSoundOff = this.isBackgroundSoundOff;
               }
               return;
            }
         }
         §§goto(addr002e);
      }
      
      public function get isBackgroundSoundOff() : Boolean
      {
         return this._isBackgroundSoundOff;
      }
      
      public function set isBackgroundSoundOff(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._isBackgroundSoundOff = param1;
         }
      }
      
      public function get isSFXOff() : Boolean
      {
         return this._isSFXOff;
      }
      
      public function set isSFXOff(param1:Boolean) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:Vector.<SoundVo> = null;
         var _loc3_:SoundVo = null;
         if(!_loc9_)
         {
            this._isSFXOff = param1;
            if(!(_loc9_ && Boolean(this)))
            {
               this._soundTransform = new SoundTransform(this._isSFXOff ? 1 : 0,0);
            }
         }
         for each(_loc2_ in this._soundsSFX)
         {
            if(_loc8_ || Boolean(_loc2_))
            {
               var _loc6_:int = 0;
               if(_loc8_)
               {
                  for each(_loc3_ in _loc2_)
                  {
                     if(!_loc9_)
                     {
                        if(!_loc3_.channel)
                        {
                           continue;
                        }
                        if(!(_loc8_ || Boolean(this)))
                        {
                           continue;
                        }
                     }
                     _loc3_.channel.soundTransform = this._soundTransform;
                  }
               }
            }
         }
      }
      
      private function setupBackgroundSound() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            if(!this._soundFilesLoaded)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr002f);
               }
            }
            var _loc1_:Class = ApplicationDomain.currentDomain.getDefinition("BackgroundMusic") as Class;
            if(!(_loc3_ && _loc3_))
            {
               this._backgroundSound = new _loc1_();
               if(!(_loc3_ && _loc3_))
               {
                  this.addSFXchannel(this._backgroundSound,"BackgroundMusic",true);
               }
            }
            return;
         }
         addr002f:
      }
      
      private function addSFXchannel(param1:Sound, param2:String, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         if(_loc6_ || Boolean(this))
         {
            if(!this._soundsSFX[param2])
            {
               if(_loc6_ || Boolean(this))
               {
                  §§goto(addr003d);
               }
               §§goto(addr00e0);
            }
            §§goto(addr005e);
         }
         addr003d:
         this._soundsSFX[param2] = new Vector.<SoundVo>();
         if(_loc6_ || Boolean(param2))
         {
            addr005e:
            §§push(param2 == "ShrubberyDemolish");
            if(_loc6_ || Boolean(param2))
            {
               var _temp_6:* = §§pop();
               §§push(_temp_6);
               if(_temp_6)
               {
                  if(!(_loc5_ && Boolean(this)))
                  {
                     §§pop();
                     if(_loc6_ || Boolean(param2))
                     {
                        §§goto(addr00cd);
                     }
                     §§goto(addr00df);
                  }
               }
            }
            addr00cd:
            §§push(Vector.<SoundVo>(this._soundsSFX[param2]).length == 0);
            if(!(_loc5_ && Boolean(this)))
            {
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc6_ || param3)
               {
                  §§goto(addr00df);
               }
            }
            addr00e0:
            var _loc4_:SoundVo = new SoundVo();
            _loc4_.type = param2;
            if(_loc6_)
            {
               _loc4_.sound = param1;
               if(_loc6_ || Boolean(param2))
               {
                  §§goto(addr010a);
               }
               §§goto(addr0146);
            }
            addr010a:
            _loc4_.loop = param3;
            if(_loc6_ || param3)
            {
               this._soundsSFX[param2].push(_loc4_);
               if(!(_loc5_ && Boolean(param2)))
               {
                  addr0146:
                  §§push(TweenMax);
                  §§push(this._soundsSFX[param2].length * 10);
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     §§push(§§pop() / 1000);
                  }
                  §§pop().delayedCall(§§pop(),this.startSound,[_loc4_]);
               }
            }
            return;
         }
         addr00df:
      }
      
      private function startSound(param1:SoundVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = 0;
         if(!_loc4_)
         {
            param1.channel = param1.sound.play();
            if(_loc3_ || Boolean(this))
            {
               if(param1.channel)
               {
                  if(!_loc4_)
                  {
                     addr0042:
                     param1.channel.soundTransform = this._soundTransform;
                     if(!(_loc4_ && Boolean(_loc2_)))
                     {
                        param1.channel.addEventListener(Event.SOUND_COMPLETE,this.handleSFXcomplete);
                        if(!(_loc3_ || Boolean(this)))
                        {
                           addr00be:
                           addr00bf:
                           if(_loc2_ != -1)
                           {
                              if(!_loc4_)
                              {
                                 addr00cb:
                                 this._soundsSFX[param1.type].splice(_loc2_,1);
                              }
                           }
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00cb);
                  }
                  addr00dc:
                  return;
               }
               §§push(int(this._soundsSFX[param1.type].indexOf(param1)));
               if(_loc3_ || Boolean(_loc2_))
               {
                  _loc2_ = §§pop();
                  if(_loc3_ || Boolean(param1))
                  {
                     §§goto(addr00be);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00bf);
            }
            §§goto(addr00be);
         }
         §§goto(addr0042);
      }
      
      private function stopSound(param1:String, param2:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:Vector.<SoundVo> = null;
         var _loc4_:SoundVo = null;
         var _loc5_:* = 0;
         for each(_loc3_ in this._soundsSFX)
         {
            if(!_loc10_)
            {
               var _loc8_:int = 0;
               if(_loc11_)
               {
                  for each(_loc4_ in _loc3_)
                  {
                     if(_loc4_.type != param1)
                     {
                        continue;
                     }
                     if(!_loc11_)
                     {
                        continue;
                     }
                     §§push(int(this._soundsSFX[_loc4_.type].indexOf(_loc4_)));
                     if(_loc11_ || Boolean(param1))
                     {
                        _loc5_ = §§pop();
                        if(_loc11_)
                        {
                           if(_loc4_.channel)
                           {
                              if(!(_loc10_ && Boolean(param1)))
                              {
                                 _loc4_.channel.stop();
                                 if(_loc10_ && Boolean(this))
                                 {
                                    continue;
                                 }
                                 addr00d4:
                                 addr00d6:
                                 if(_loc5_ != -1)
                                 {
                                    if(!(_loc10_ && Boolean(this)))
                                    {
                                       this._soundsSFX[_loc4_.type].splice(_loc5_,1);
                                       if(!(_loc10_ && param2))
                                       {
                                          addr0117:
                                          if(param2)
                                          {
                                             continue;
                                          }
                                          if(!_loc11_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr0117);
                           }
                           §§goto(addr00d4);
                        }
                        §§goto(addr0117);
                     }
                     §§goto(addr00d6);
                  }
               }
            }
         }
      }
      
      private function handleSFXcomplete(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc3_:Vector.<SoundVo> = null;
         var _loc4_:SoundVo = null;
         var _loc5_:* = 0;
         var _loc2_:SoundChannel = param1.target as SoundChannel;
         for each(_loc3_ in this._soundsSFX)
         {
            if(_loc11_ || Boolean(this))
            {
               var _loc8_:int = 0;
               if(!(_loc10_ && Boolean(param1)))
               {
                  for each(_loc4_ in _loc3_)
                  {
                     if(_loc4_.channel !== _loc2_)
                     {
                        continue;
                     }
                     if(_loc10_)
                     {
                        continue;
                     }
                     §§push(int(this._soundsSFX[_loc4_.type].indexOf(_loc4_)));
                     if(_loc11_ || Boolean(_loc3_))
                     {
                        _loc5_ = §§pop();
                        if(_loc11_)
                        {
                           if(_loc4_.loop)
                           {
                              if(_loc10_)
                              {
                                 continue;
                              }
                              _loc4_.channel = _loc4_.sound.play();
                              if(!(_loc10_ && Boolean(_loc2_)))
                              {
                                 _loc4_.channel.soundTransform = this._soundTransform;
                                 if(!_loc10_)
                                 {
                                    _loc4_.channel.addEventListener(Event.SOUND_COMPLETE,this.handleSFXcomplete);
                                    if(_loc10_ && Boolean(_loc3_))
                                    {
                                       §§goto(addr0138);
                                    }
                                    §§goto(addr0165);
                                 }
                                 §§goto(addr0138);
                              }
                           }
                           else
                           {
                              addr0124:
                              if(_loc5_ != -1)
                              {
                                 if(_loc10_ && Boolean(param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr0138);
                              }
                           }
                           §§goto(addr0165);
                        }
                        addr0138:
                        this._soundsSFX[_loc4_.type].splice(_loc5_,1);
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           addr0165:
                           _loc2_.removeEventListener(Event.SOUND_COMPLETE,this.handleSFXcomplete);
                           if(_loc10_)
                           {
                              continue;
                           }
                        }
                        return;
                     }
                     §§goto(addr0124);
                  }
               }
            }
         }
      }
      
      private function playSound(param1:String, param2:Boolean = false) : void
      {
         var $definition:String;
         var loop:Boolean;
         var currentDomain:ApplicationDomain;
         var soundClass:Class;
         var sound:Sound;
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§push(null);
            if(!(_loc5_ && _loc3_))
            {
               §§pop().§§slot[3] = §§pop();
               if(_loc6_)
               {
                  §§push(§§newactivation());
                  if(!_loc5_)
                  {
                     §§push(null);
                     if(!_loc5_)
                     {
                        addr0049:
                        §§pop().§§slot[4] = §§pop();
                        if(_loc6_)
                        {
                           addr0054:
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              addr005d:
                              §§pop().§§slot[5] = null;
                              addr005c:
                              if(!(_loc5_ && param2))
                              {
                                 addr0070:
                                 §§push(§§newactivation());
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    §§pop().§§slot[1] = param1;
                                    if(_loc6_)
                                    {
                                       addr008b:
                                       loop = param2;
                                    }
                                    try
                                    {
                                       addr008e:
                                       if(!this._soundFilesLoaded)
                                       {
                                          if(_loc6_)
                                          {
                                             return;
                                          }
                                       }
                                       else
                                       {
                                          §§push(§§newactivation());
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             §§pop().§§slot[3] = ApplicationDomain.currentDomain;
                                             if(!_loc5_)
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc5_ && Boolean(this)))
                                                {
                                                   addr00e7:
                                                   §§push(§§newactivation());
                                                   if(!_loc5_)
                                                   {
                                                      §§pop().§§slot[4] = §§pop().§§slot[3].getDefinition($definition) as Class;
                                                      if(!_loc5_)
                                                      {
                                                         addr010c:
                                                         sound = new soundClass();
                                                         addr010a:
                                                         if(_loc6_)
                                                         {
                                                            this.addSFXchannel(sound,$definition,loop);
                                                         }
                                                      }
                                                      §§goto(addr015d);
                                                   }
                                                   §§goto(addr010c);
                                                }
                                                §§goto(addr010a);
                                             }
                                             §§goto(addr015d);
                                          }
                                          §§goto(addr00e7);
                                       }
                                    }
                                    catch(error:Error)
                                    {
                                       CityramaLogger.logger.fatal(error.message);
                                    }
                                    addr015d:
                                    return;
                                 }
                                 §§goto(addr008b);
                              }
                              §§goto(addr008e);
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr0070);
                     }
                     §§goto(addr005d);
                  }
                  §§goto(addr008b);
               }
               §§goto(addr0054);
            }
            §§goto(addr0049);
         }
         §§goto(addr005c);
      }
      
      private function cueSound(param1:Array) : void
      {
         var array:Array;
         var lenght:Number;
         var currentDomain:ApplicationDomain;
         var str:String;
         var soundClass:Class;
         var sound:Class;
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         §§push(§§newactivation());
         if(_loc6_)
         {
            §§pop().§§slot[2] = NaN;
            if(_loc6_ || _loc3_)
            {
               §§push(§§newactivation());
               if(_loc6_)
               {
                  §§push(null);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§pop().§§slot[3] = §§pop();
                     if(!_loc5_)
                     {
                        addr0054:
                        §§push(§§newactivation());
                        if(_loc6_)
                        {
                           §§push(null);
                           if(!_loc5_)
                           {
                              §§pop().§§slot[4] = §§pop();
                              if(_loc6_ || Boolean(param1))
                              {
                                 §§push(§§newactivation());
                                 if(!_loc5_)
                                 {
                                    §§goto(addr007c);
                                 }
                                 §§goto(addr00ac);
                              }
                              §§goto(addr0096);
                           }
                           §§goto(addr008b);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr00aa);
                  }
                  §§goto(addr008b);
               }
               addr007c:
               §§push(null);
               if(!(_loc5_ && _loc2_))
               {
                  addr008b:
                  §§pop().§§slot[5] = §§pop();
                  if(_loc6_)
                  {
                     addr0096:
                     §§push(§§newactivation());
                     if(!_loc5_)
                     {
                        §§goto(addr009f);
                     }
                     §§goto(addr00ac);
                  }
                  §§goto(addr00aa);
               }
               addr009f:
               §§pop().§§slot[6] = null;
               §§goto(addr009e);
            }
            §§goto(addr0054);
         }
         addr009e:
         if(_loc6_)
         {
            addr00ac:
            array = param1;
            addr00aa:
         }
         try
         {
            if(!this._soundFilesLoaded)
            {
               if(!_loc5_)
               {
                  return;
               }
               addr00df:
               §§push(§§newactivation());
            }
            else
            {
               §§push(§§newactivation());
               if(!_loc5_)
               {
                  §§pop().§§slot[2] = 0;
                  if(_loc6_ || Boolean(param1))
                  {
                     §§goto(addr00df);
                  }
                  §§goto(addr024a);
               }
            }
            §§pop().§§slot[3] = ApplicationDomain.currentDomain;
            if(!_loc5_)
            {
               var _loc3_:int = 0;
               if(!_loc5_)
               {
                  var _loc4_:* = array;
                  if(_loc6_ || Boolean(_loc3_))
                  {
                     loop0:
                     while(§§hasnext(_loc4_,_loc3_))
                     {
                        §§push(§§newactivation());
                        if(!(_loc5_ && _loc2_))
                        {
                           §§pop().§§slot[4] = §§nextvalue(_loc3_,_loc4_);
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              §§push(§§newactivation());
                              if(_loc6_ || _loc2_)
                              {
                                 §§push(§§newactivation());
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§pop().§§slot[5] = §§pop().§§slot[3].getDefinition(str) as Class;
                                    if(_loc6_ || Boolean(this))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc6_)
                                       {
                                          addr0190:
                                          §§push(§§newactivation());
                                          if(_loc6_)
                                          {
                                             addr0198:
                                             §§pop().§§slot[6] = new §§pop().§§slot[5]();
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr01b3:
                                                addr01b1:
                                                addr01af:
                                                §§push(§§newactivation());
                                                §§push(lenght);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() + Sound(soundClass).length);
                                                }
                                                §§pop().§§slot[2] = §§pop();
                                                if(!(_loc6_ || Boolean(param1)))
                                                {
                                                   continue;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(TweenMax);
                                                §§push(lenght);
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§push(§§pop() - Sound(soundClass).length);
                                                }
                                                §§pop().delayedCall(§§pop(),this.addSFXchannel,[sound,str]);
                                                continue loop0;
                                             }
                                             addr01da:
                                          }
                                          §§goto(addr01b3);
                                       }
                                       §§goto(addr01b1);
                                    }
                                    §§goto(addr01da);
                                 }
                                 §§goto(addr0198);
                              }
                              §§goto(addr0190);
                           }
                           §§goto(addr01af);
                        }
                        §§goto(addr01b1);
                     }
                     §§goto(addr0223);
                  }
                  §§goto(addr01da);
               }
               addr0223:
               §§goto(addr024a);
            }
         }
         catch(error:Error)
         {
            CityramaLogger.logger.fatal(error.message);
         }
         addr024a:
      }
      
      public function playBounce() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.playSound("CursorClick03");
         }
      }
      
      public function playMysteryUnfold() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this.playSound("MysteryBuildingUnfold");
         }
      }
      
      public function playButtonClick() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.playSound("CursorClick01");
         }
      }
      
      public function playCollect() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.playSound("CollectCoin");
         }
      }
      
      public function playLevelUp() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.playSound("LevelUp03");
         }
      }
      
      public function playRentCollectorActivate() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.playSound("RentCollectorActivate");
         }
      }
      
      public function playBuildingClick() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.playSound("CursorClick03");
         }
      }
      
      public function playStreetBuild() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.playSound("RoadBuilt01");
         }
      }
      
      public function playCollectXP() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.playSound("CollectXP");
         }
      }
      
      public function playBuildingDemolition() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.playSound("DemolitionBuilding");
         }
      }
      
      public function playInaugurateResidential() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.playSound("ResidentInaugurate");
         }
      }
      
      public function playBoulderDemolition(param1:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = param1;
         if(!_loc4_)
         {
            §§push(ServerTagConstants.TREE);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!(_loc4_ && Boolean(param1)))
                     {
                        §§push(0);
                        if(_loc4_ && Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr00d0:
                        §§push(1);
                        if(_loc4_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(ServerTagConstants.ROCK);
                     if(!_loc4_)
                     {
                        addr00b7:
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc4_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr00d0);
                              }
                              else
                              {
                                 addr00e6:
                                 §§push(2);
                                 if(_loc3_ || Boolean(this))
                                 {
                                 }
                              }
                              §§goto(addr0110);
                           }
                           else
                           {
                              §§goto(addr00e2);
                           }
                        }
                        addr00e2:
                        §§goto(addr00e1);
                     }
                     addr00e1:
                     if(ServerTagConstants.SHRUBBERY === _loc2_)
                     {
                        §§goto(addr00e6);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0110);
                  }
                  addr0110:
                  switch(§§pop())
                  {
                     case 0:
                        this.playSound("TreeDemolish");
                        if(_loc3_)
                        {
                           return;
                        }
                        break;
                     case 1:
                        this.playSound("RockDemolish");
                        if(_loc3_)
                        {
                           return;
                        }
                        break;
                     case 2:
                        this.playSound("ShrubberyDemolish");
                        if(_loc3_)
                        {
                           return;
                        }
                     default:
                        this.playSound("DemolitionBoulder");
                  }
                  return;
               }
               §§goto(addr00e2);
            }
            §§goto(addr00b7);
         }
         §§goto(addr00e6);
      }
      
      public function playProductionBox() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.playSound("ProductionBox");
         }
      }
      
      public function playConstruction() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            this.playSound("ConstructionBuilding");
         }
      }
      
      public function playQuestReward() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.playSound("QuestReward");
         }
      }
      
      public function playQuestNew() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.playSound("QuestNew");
         }
      }
      
      public function playRCSpend() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.playSound("SpendRC");
         }
      }
      
      public function playEnergyUp() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this.playSound("EnergyUp");
         }
      }
      
      public function playEnergyDown() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.playSound("EnergyDown");
         }
      }
      
      public function playMoodUp() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.playSound("MoodUp");
         }
      }
      
      public function playMoodDown() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            this.playSound("MoodDown");
         }
      }
      
      public function playBoosterSparkle() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.playSound("BoosterSparkle");
         }
      }
      
      public function playBoosterUnwrap() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.playSound("BoosterUnwrap");
         }
      }
      
      public function playEmergencyFail() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.playSound("EmergencyFail");
         }
      }
      
      public function playEmergencySuccess() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.playSound("EmergencySuccess");
         }
      }
      
      public function playSirenFire() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.playSound("SirenFire",true);
         }
      }
      
      public function stopSirenFire() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.stopSound("SirenFire",true);
         }
      }
      
      public function playMumble() : void
      {
      }
      
      public function playSirenPolice() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.playSound("SirenPolice",true);
         }
      }
      
      public function stopSirenPolice() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.stopSound("SirenPolice",true);
         }
      }
      
      public function playTVSwitch() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.playSound("TVSwitch");
         }
      }
      
      public function playTVTicker() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.playSound("TVTicker");
         }
      }
      
      public function playAlarmGeneral() : void
      {
      }
      
      public function playSirenAmbulance() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.playSound("SirenAmbulance",true);
         }
      }
      
      public function stopSirenAmbulance() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.stopSound("SirenAmbulance",true);
         }
      }
      
      public function playBossterFanfare() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.playSound("BossterFanfare");
         }
      }
      
      public function playEmergencyCitizenSound(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1;
         if(_loc4_ || Boolean(param1))
         {
            §§push(ServerTagConstants.FIRE_DEPARTMENT);
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr0101:
                        §§push(2);
                        if(_loc4_ || Boolean(_loc2_))
                        {
                        }
                     }
                     §§goto(addr0121);
                  }
                  else
                  {
                     §§push(ServerTagConstants.POLICE_DEPARTMENT);
                     if(_loc4_ || Boolean(this))
                     {
                        §§push(_loc2_);
                        if(!(_loc3_ && Boolean(this)))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && Boolean(param1)))
                              {
                                 §§push(1);
                                 if(_loc3_ && Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 §§goto(addr0101);
                              }
                              §§goto(addr0121);
                           }
                           else
                           {
                              §§goto(addr00fd);
                           }
                        }
                        addr00fd:
                     }
                     §§goto(addr00fc);
                  }
               }
               §§goto(addr00fd);
            }
            addr00fc:
            if(ServerTagConstants.HOSPITAL === _loc2_)
            {
               §§goto(addr0101);
            }
            else
            {
               §§push(3);
            }
            addr0121:
            switch(§§pop())
            {
               case 0:
                  this.playSirenFire();
                  if(_loc4_ || Boolean(this))
                  {
                  }
                  break;
               case 1:
                  this.playSirenPolice();
                  if(_loc3_)
                  {
                  }
                  break;
               case 2:
                  this.playSirenAmbulance();
                  if(_loc3_ && Boolean(param1))
                  {
                  }
            }
            return;
         }
         §§goto(addr0101);
      }
      
      public function stopEmergencyCitizenSoundByCitizenID(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = param1;
         if(_loc4_ || _loc3_)
         {
            §§push("emergency_firetruck");
            if(!(_loc3_ && Boolean(this)))
            {
               §§push(_loc2_);
               if(!(_loc3_ && Boolean(this)))
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc4_ || Boolean(param1))
                        {
                        }
                     }
                     else
                     {
                        addr00ed:
                        §§push(1);
                        if(_loc3_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push("emergency_policecar");
                     if(!(_loc3_ && Boolean(_loc2_)))
                     {
                        addr00ca:
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr00ed);
                              }
                              else
                              {
                                 addr0101:
                                 §§push(2);
                                 if(_loc3_ && Boolean(this))
                                 {
                                 }
                              }
                              §§goto(addr0120);
                           }
                           else
                           {
                              §§goto(addr00fd);
                           }
                        }
                        addr00fd:
                        §§goto(addr00fc);
                     }
                     addr00fc:
                     if("emergency_ambulance" === _loc2_)
                     {
                        §§goto(addr0101);
                     }
                     else
                     {
                        §§push(3);
                     }
                     §§goto(addr0120);
                  }
                  addr0120:
                  switch(§§pop())
                  {
                     case 0:
                        this.stopSirenFire();
                        if(_loc4_ || _loc3_)
                        {
                        }
                        break;
                     case 1:
                        this.stopSirenPolice();
                        if(_loc4_ || _loc3_)
                        {
                        }
                        break;
                     case 2:
                        this.stopSirenAmbulance();
                        if(_loc3_)
                        {
                        }
                  }
                  return;
               }
               §§goto(addr00fd);
            }
            §§goto(addr00ca);
         }
         §§goto(addr0101);
      }
      
      public function playCityWheelSpinSoundMain() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            this.playSound("CityWheelSpinMain",true);
         }
      }
      
      public function stopCityWheelSpinSoundMain() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.stopSound("CityWheelSpinMain",true);
         }
      }
      
      public function playCityWheelStopSoundMain() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.playSound("CityWheelStopMain");
         }
      }
      
      public function stopCityWheelStopSoundMain() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.stopSound("CityWheelStopMain",true);
         }
      }
      
      public function playCityWheelSpinSoundBuff() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.playSound("CityWheelSpinBuff",true);
         }
      }
      
      public function stopCityWheelSpinSoundBuff() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.stopSound("CityWheelSpinBuff",true);
         }
      }
      
      public function playCityWheelStopSoundBuff() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this.playSound("CityWheelStopBuff");
         }
      }
      
      public function stopCityWheelStopSoundBuff() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.stopSound("CityWheelStopBuff",true);
         }
      }
      
      public function playCityWheelMainSelected() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.playSound("CityWheelSelectMain");
         }
      }
      
      public function playCityWheelBuffSelected() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            this.playSound("CityWheelSelectBuff");
         }
      }
      
      public function playCityWheelRewardSound() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            this.playSound("CityWheelReward");
         }
      }
      
      public function playChristmasTreeUnwrap() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this.playSound("ChristmasTreeUnwrap");
         }
      }
      
      public function playOlympicTorchDrop() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            this.playSound("OlympicTorch");
         }
      }
   }
}

