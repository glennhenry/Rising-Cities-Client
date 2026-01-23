package net.bigpoint.services.fileRuntimeLoadService
{
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.SWFLoader;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import org.bytearray.explorer.SWFExplo;
   import org.bytearray.explorer.events.SWFExplorerEvent;
   
   public class FileRuntimeLoadServiceDynamic extends EventDispatcher
   {
      
      private static var instance:FileRuntimeLoadServiceDynamic;
      
      private var _loadedSWFNames:Vector.<String>;
      
      private var _requestedSWFNames:Vector.<String>;
      
      private var _optionSmoothing:Boolean;
      
      private var _queueMax:LoaderMax;
      
      private var _loaderIsIdle:Boolean;
      
      private var _knownUnloadedFiles:Dictionary;
      
      private var _isReady:Boolean = false;
      
      private var _availableDefinitions:Vector.<String>;
      
      private var _libAvailableDefinitions:Dictionary;
      
      private var _requestedLibPerNotificationID:Dictionary;
      
      private var _swfNamesInProgress:Vector.<String>;
      
      private var _pathFromFlashVars:String;
      
      private var _bmpDataMovieCache:Dictionary;
      
      private var _dynamicApplication:Dictionary;
      
      public function FileRuntimeLoadServiceDynamic(param1:IEventDispatcher = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            super(param1);
            if(_loc3_ || _loc2_)
            {
               this._queueMax = new LoaderMax({
                  "onComplete":this.finalCompleteHandler,
                  "name":"DynamicMaxLoader",
                  "domain":"own",
                  "context":new LoaderContext(false,ApplicationDomain.currentDomain)
               });
               if(!_loc2_)
               {
                  this._queueMax.maxConnections = 2;
                  if(!(_loc2_ && Boolean(this)))
                  {
                     this._loaderIsIdle = true;
                     if(_loc3_)
                     {
                        this._knownUnloadedFiles = new Dictionary();
                        if(_loc3_)
                        {
                           this._loadedSWFNames = new Vector.<String>();
                           if(!_loc2_)
                           {
                              this._requestedSWFNames = new Vector.<String>();
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 addr00d0:
                                 this._availableDefinitions = new Vector.<String>();
                                 if(!_loc2_)
                                 {
                                    addr00e2:
                                    this._libAvailableDefinitions = new Dictionary();
                                    if(!(_loc2_ && Boolean(this)))
                                    {
                                       addr00f8:
                                       this._requestedLibPerNotificationID = new Dictionary();
                                       if(!(_loc2_ && Boolean(this)))
                                       {
                                          this._swfNamesInProgress = new Vector.<String>();
                                          addr010e:
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             addr0137:
                                             this._bmpDataMovieCache = new Dictionary();
                                             if(_loc3_)
                                             {
                                                this._optionSmoothing = OptionsGlobalVariables.getInstance().highQuality;
                                             }
                                          }
                                       }
                                       §§goto(addr0152);
                                    }
                                    §§goto(addr010e);
                                 }
                                 §§goto(addr0137);
                              }
                              §§goto(addr0152);
                           }
                           §§goto(addr010e);
                        }
                        §§goto(addr00f8);
                     }
                     §§goto(addr00d0);
                  }
                  §§goto(addr00e2);
               }
               §§goto(addr00d0);
            }
            addr0152:
            return;
         }
         §§goto(addr010e);
      }
      
      public static function getInstance() : FileRuntimeLoadServiceDynamic
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(instance);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(_loc2_ || _loc2_)
                  {
                     instance = new FileRuntimeLoadServiceDynamic();
                  }
               }
               addr004b:
               return instance;
            }
         }
         §§goto(addr004b);
      }
      
      public function init(param1:Dictionary, param2:String) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            this._pathFromFlashVars = param2;
            if(!(_loc4_ && Boolean(this)))
            {
               this._knownUnloadedFiles = param1;
               if(_loc3_)
               {
                  addr0046:
                  this.isReady = true;
               }
               §§goto(addr004b);
            }
            §§goto(addr0046);
         }
         addr004b:
      }
      
      public function getFileAsMovieClip(param1:String) : MovieClip
      {
         var _loc2_:Class = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
         return new _loc2_();
      }
      
      public function getBitmap(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false) : Bitmap
      {
         var loaderName:String;
         var itemName:String;
         var smoothing:Boolean;
         var force:Boolean;
         var mc:MovieClip;
         var found:Boolean;
         var rawDSP:DisplayObject;
         var bData:BitmapData;
         var bmp:Bitmap;
         var label:FrameLabel;
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         §§push(§§newactivation());
         if(!(_loc9_ && Boolean(param1)))
         {
            §§push(null);
            if(_loc8_)
            {
               §§pop().§§slot[5] = §§pop();
               if(_loc8_ || Boolean(this))
               {
                  §§push(§§newactivation());
                  if(!_loc9_)
                  {
                     §§push(null);
                     if(!_loc9_)
                     {
                        §§pop().§§slot[7] = §§pop();
                        if(_loc8_)
                        {
                           §§push(§§newactivation());
                           if(_loc8_ || param3)
                           {
                              §§goto(addr006f);
                           }
                           §§goto(addr012b);
                        }
                        §§goto(addr0104);
                     }
                     §§goto(addr006f);
                  }
                  §§goto(addr00ca);
               }
               §§goto(addr0104);
            }
            addr006f:
            §§pop().§§slot[10] = null;
            if(_loc8_ || Boolean(this))
            {
               §§push(§§newactivation());
               if(!(_loc9_ && Boolean(this)))
               {
                  addr0092:
                  §§push(param1);
                  if(!_loc9_)
                  {
                     §§pop().§§slot[1] = §§pop();
                     if(!(_loc9_ && param3))
                     {
                        §§push(§§newactivation());
                        if(_loc8_)
                        {
                           addr00b2:
                           §§pop().§§slot[2] = param2;
                           if(_loc8_ || Boolean(param1))
                           {
                              §§push(§§newactivation());
                              if(!_loc9_)
                              {
                                 addr00ca:
                                 §§push(param3);
                                 if(!_loc9_)
                                 {
                                    §§pop().§§slot[3] = §§pop();
                                    if(_loc8_)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc8_)
                                       {
                                          addr00e1:
                                          §§push(param4);
                                          if(_loc8_)
                                          {
                                             §§pop().§§slot[4] = §§pop();
                                             if(_loc8_ || Boolean(param1))
                                             {
                                                this.notReadyCheck();
                                                if(_loc8_)
                                                {
                                                   addr0104:
                                                   §§push(§§newactivation());
                                                   if(!_loc9_)
                                                   {
                                                      addr010c:
                                                      §§pop().§§slot[5] = this.getCachedBmpMC(loaderName);
                                                      if(_loc8_ || Boolean(this))
                                                      {
                                                         addr012c:
                                                         found = false;
                                                         addr012b:
                                                         addr0129:
                                                      }
                                                      try
                                                      {
                                                         §§goto(addr012e);
                                                      }
                                                      catch(e:Error)
                                                      {
                                                      }
                                                      §§goto(addr0223);
                                                   }
                                                   §§goto(addr012b);
                                                }
                                                §§goto(addr0129);
                                             }
                                             §§goto(addr0104);
                                          }
                                          §§goto(addr012c);
                                       }
                                       §§goto(addr010c);
                                    }
                                    §§goto(addr0129);
                                 }
                                 §§goto(addr012c);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr0129);
                        }
                        §§goto(addr010c);
                     }
                     §§goto(addr012e);
                  }
                  §§goto(addr00b2);
               }
               §§goto(addr00ca);
            }
            addr012e:
            var _loc6_:int = 0;
            if(_loc8_ || Boolean(this))
            {
               var _loc7_:* = mc.currentLabels;
               if(!(_loc9_ && param3))
               {
                  loop0:
                  while(§§hasnext(_loc7_,_loc6_))
                  {
                     §§push(§§newactivation());
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        §§pop().§§slot[10] = §§nextvalue(_loc6_,_loc7_);
                        if(_loc9_ && Boolean(param1))
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(§§newactivation());
                           if(_loc9_)
                           {
                              break;
                           }
                           if(§§pop().§§slot[10].name == itemName)
                           {
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 §§push(§§newactivation());
                                 if(!_loc9_)
                                 {
                                    §§pop().§§slot[6] = true;
                                    if(_loc8_)
                                    {
                                       §§push(§§newactivation());
                                       break;
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                              break loop0;
                           }
                           continue loop0;
                        }
                     }
                     §§pop().§§slot[5].gotoAndStop(label.frame);
                     break;
                  }
                  §§goto(addr01e3);
               }
               §§goto(addr0185);
            }
            addr01e3:
            if(!_loc9_)
            {
               §§push(§§newactivation());
               if(!(_loc9_ && param3))
               {
                  §§push(§§pop().§§slot[6]);
                  if(_loc8_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc9_)
                        {
                           addr0223:
                           §§push(§§newactivation());
                           if(!_loc9_)
                           {
                              §§push(§§pop().§§slot[5] == null);
                              if(_loc8_)
                              {
                                 var _temp_16:* = §§pop();
                                 §§push(_temp_16);
                                 if(!_temp_16)
                                 {
                                    if(_loc8_ || Boolean(param1))
                                    {
                                       addr0248:
                                       §§pop();
                                       if(!(_loc9_ && Boolean(param2)))
                                       {
                                          §§push(§§newactivation());
                                          if(_loc8_)
                                          {
                                             addr0267:
                                             if(§§pop().§§slot[5].numChildren < 1)
                                             {
                                                if(_loc8_ || param3)
                                                {
                                                   throw new RamaCityError(this + " Error mc invalid");
                                                }
                                                addr02ed:
                                                §§push(§§newactivation());
                                                if(_loc8_)
                                                {
                                                   §§push(this._optionSmoothing);
                                                   if(!(_loc9_ && Boolean(param1)))
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   §§pop().§§slot[3] = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      §§push(§§newactivation());
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         §§pop().§§slot[8].draw(rawDSP,null,null,null,null,smoothing);
                                                         addr0320:
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            §§goto(addr0367);
                                                         }
                                                         §§goto(addr0365);
                                                      }
                                                      addr0367:
                                                   }
                                                   §§goto(addr034d);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§§newactivation());
                                                if(!(_loc9_ && Boolean(param2)))
                                                {
                                                   §§goto(addr029d);
                                                }
                                             }
                                             §§goto(addr0367);
                                          }
                                          addr029d:
                                          §§pop().§§slot[7] = mc.getChildAt(0) as DisplayObject;
                                          if(_loc8_ || param3)
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc9_ && Boolean(param1)))
                                             {
                                                addr02cc:
                                                §§pop().§§slot[8] = new BitmapData(rawDSP.width,rawDSP.height,true,0);
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr02ed);
                                                }
                                                §§goto(addr034d);
                                             }
                                             §§goto(addr0320);
                                          }
                                          §§goto(addr034d);
                                       }
                                       §§goto(addr02ed);
                                    }
                                 }
                                 §§goto(addr0267);
                              }
                              §§goto(addr0248);
                           }
                           §§goto(addr0320);
                        }
                        §§goto(addr02ed);
                     }
                     §§goto(addr0223);
                  }
                  §§goto(addr0248);
               }
               §§goto(addr02cc);
            }
            addr034d:
            §§push(§§newactivation());
            if(_loc8_)
            {
               §§pop().§§slot[9] = new Bitmap(bData);
               addr0365:
               §§push(§§newactivation());
            }
            return §§pop().§§slot[9];
         }
         §§goto(addr0092);
      }
      
      public function getBitmapData(param1:String, param2:String) : BitmapData
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc6_:FrameLabel = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:BitmapData = null;
         if(_loc11_ || Boolean(param2))
         {
            this.notReadyCheck();
            if(_loc11_ || Boolean(param2))
            {
               §§goto(addr0047);
            }
            §§goto(addr0054);
         }
         addr0047:
         if(this._libAvailableDefinitions.hasOwnProperty(param1))
         {
            addr0054:
            §§push(true);
            if(_loc12_ && Boolean(param2))
            {
            }
            addr0076:
            §§push(§§pop());
         }
         else
         {
            §§push(false);
            if(!(_loc12_ && Boolean(this)))
            {
               §§goto(addr0076);
            }
         }
         var _loc3_:* = §§pop();
         if(_loc11_)
         {
            if(!_loc3_)
            {
               if(_loc11_)
               {
                  return null;
               }
            }
         }
         var _loc4_:Class = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
         var _loc5_:MovieClip = new _loc4_();
         for each(_loc6_ in _loc5_.currentLabels)
         {
            if(_loc6_.name == param2)
            {
               if(_loc11_)
               {
                  _loc5_.gotoAndStop(_loc6_.frame);
               }
               break;
            }
         }
         _loc7_ = _loc5_.getChildAt(0) as DisplayObject;
         _loc8_ = new BitmapData(_loc7_.width,_loc7_.height,true,0);
         _loc8_.draw(_loc7_);
         return _loc8_;
      }
      
      public function getFileAsBitmap(param1:String, param2:String, param3:Bitmap) : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc5_:Class = null;
         var _loc6_:MovieClip = null;
         var _loc7_:FrameLabel = null;
         var _loc8_:DisplayObject = null;
         var _loc9_:BitmapData = null;
         var _loc10_:Bitmap = null;
         if(_loc13_ || Boolean(param1))
         {
            this.notReadyCheck();
            if(!_loc14_)
            {
               if(this._libAvailableDefinitions.hasOwnProperty(param1))
               {
                  addr005f:
                  §§push(true);
                  if(!(_loc14_ && Boolean(this)))
                  {
                     addr0081:
                     §§push(§§pop());
                  }
               }
               else
               {
                  §§push(false);
                  if(_loc13_ || Boolean(this))
                  {
                     §§goto(addr0081);
                  }
               }
               var _loc4_:* = §§pop();
               if(_loc4_)
               {
                  _loc5_ = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
                  _loc6_ = new _loc5_();
                  for each(_loc7_ in _loc6_.currentLabels)
                  {
                     if(_loc7_.name == param2)
                     {
                        if(!_loc14_)
                        {
                           _loc6_.gotoAndStop(_loc7_.frame);
                        }
                        break;
                     }
                  }
                  _loc8_ = _loc6_.getChildAt(0) as DisplayObject;
                  _loc9_ = new BitmapData(_loc8_.width,_loc8_.height,true,0);
                  _loc9_.lock();
                  if(_loc13_)
                  {
                     _loc9_.draw(_loc8_);
                     if(!(_loc14_ && Boolean(param1)))
                     {
                        _loc9_.unlock();
                     }
                  }
                  param3 = _loc10_ = new Bitmap(_loc9_);
               }
               else
               {
                  this._requestedSWFNames.push(param1);
               }
               return;
            }
         }
         §§goto(addr005f);
      }
      
      private function initHandler(param1:LoaderEvent) : void
      {
         var event:LoaderEvent;
         var test:Class;
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(§§newactivation());
         if(_loc4_ || Boolean(this))
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               addr0043:
               event = param1;
            }
            try
            {
               test = ApplicationDomain.currentDomain.getDefinition(event.currentTarget.name) as Class;
            }
            catch(e:Error)
            {
            }
            return;
         }
         §§goto(addr0043);
      }
      
      private function completeHandler(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ByteArray = param1.currentTarget.rawContent.loaderInfo.bytes;
         var _loc3_:String = param1.currentTarget.name;
         var _loc4_:SWFExplo = new SWFExplo();
         _loc4_.addEventListener(SWFExplorerEvent.COMPLETE,this.addDefinitions);
         if(!_loc5_)
         {
            _loc4_.parse(_loc2_,"classes",_loc3_);
            if(!(_loc5_ && Boolean(this)))
            {
               addr0087:
               this._loadedSWFNames.push(_loc3_);
            }
            return;
         }
         §§goto(addr0087);
      }
      
      private function addSWFtoLoad(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:SWFLoader = null;
         if(_loc6_ || Boolean(this))
         {
            this.notReadyCheck();
            if(_loc6_)
            {
               addr0032:
               if(param3)
               {
                  if(!_loc5_)
                  {
                     §§push(this._queueMax);
                     if(_loc6_ || Boolean(this))
                     {
                        §§pop().prepend(new SWFLoader(this._pathFromFlashVars + param2,{
                           "name":param1,
                           "container":this,
                           "onError":this.onSWFError,
                           "onIOError":this.onSWFIOError,
                           "onComplete":this.completeHandler,
                           "domain":"own",
                           "context":new LoaderContext(false,ApplicationDomain.currentDomain)
                        }));
                        if(_loc6_ || Boolean(this))
                        {
                           addr0119:
                           this._queueMax.load();
                           addr0115:
                           if(!_loc5_)
                           {
                              addr0123:
                              this._loaderIsIdle = false;
                              if(_loc6_)
                              {
                                 addr012e:
                                 this._swfNamesInProgress.push(param1);
                              }
                              §§goto(addr0137);
                           }
                        }
                        §§goto(addr012e);
                     }
                     §§goto(addr0119);
                  }
                  addr0137:
                  return;
               }
               _loc4_ = new SWFLoader(this._pathFromFlashVars + param2,{
                  "name":param1,
                  "container":this,
                  "onError":this.onSWFError,
                  "onIOError":this.onSWFIOError,
                  "onComplete":this.completeHandler,
                  "domain":"own",
                  "context":new LoaderContext(false,ApplicationDomain.currentDomain)
               });
               if(!_loc5_)
               {
                  this._queueMax.append(_loc4_);
               }
               §§goto(addr0115);
            }
            §§goto(addr0123);
         }
         §§goto(addr0032);
      }
      
      public function checkSWFArrayLoaded(param1:Array, param2:String = null) : Boolean
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:String = null;
         var _loc3_:Array = [];
         var _loc4_:* = false;
         var _loc5_:Boolean = true;
         for each(_loc6_ in param1)
         {
            if(!_loc9_)
            {
               if(this._libAvailableDefinitions[_loc6_] != null)
               {
                  if(!_loc9_)
                  {
                     addr0057:
                     §§push(true);
                     if(_loc10_ || Boolean(param1))
                     {
                        addr0085:
                        §§push(§§pop());
                        if(_loc10_ || Boolean(param2))
                        {
                           addr0094:
                           _loc4_ = §§pop();
                           §§push(_loc4_);
                        }
                     }
                     if(!§§pop())
                     {
                        if(_loc10_ || Boolean(param1))
                        {
                           _loc3_.push(_loc6_);
                        }
                     }
                  }
                  continue;
               }
               §§push(false);
               if(_loc10_ || Boolean(param2))
               {
                  §§goto(addr0085);
               }
               §§goto(addr0094);
            }
            §§goto(addr0057);
         }
         if(!_loc9_)
         {
            if(_loc3_.length <= 0)
            {
               if(_loc10_ || Boolean(param1))
               {
                  §§push(false);
                  if(_loc10_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0111:
                  return _loc5_;
               }
               return §§pop();
            }
            if(param2)
            {
               if(!_loc9_)
               {
                  this.requestLibsCompleteNotification(param2,_loc3_);
                  if(_loc10_)
                  {
                     addr010a:
                     this.queueMissingLibs(_loc3_);
                  }
                  §§goto(addr0111);
               }
               §§goto(addr010a);
            }
         }
         §§goto(addr0111);
      }
      
      private function requestLibsCompleteNotification(param1:String, param2:Array) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(param2))
         {
            if(this._requestedLibPerNotificationID.hasOwnProperty(param1))
            {
               if(_loc4_ || Boolean(param2))
               {
                  return;
               }
            }
            else
            {
               this._requestedLibPerNotificationID[param1] = param2;
            }
         }
      }
      
      private function finalCompleteHandler(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._loaderIsIdle = true;
         }
      }
      
      private function onFail(param1:LoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeLoadServiceEvent = new FileRuntimeLoadServiceEvent(FileRuntimeLoadServiceEvent.FAIL);
         if(_loc4_)
         {
            _loc2_.text = param1.text;
            if(!_loc3_)
            {
               dispatchEvent(_loc2_);
            }
         }
      }
      
      private function onSWFError(param1:LoaderEvent) : void
      {
      }
      
      private function onSWFIOError(param1:LoaderEvent) : void
      {
      }
      
      private function notReadyCheck() : void
      {
      }
      
      private function addDefinitions(param1:SWFExplorerEvent) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:String = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in param1.definitions)
         {
            if(!(_loc6_ && Boolean(_loc3_)))
            {
               this._availableDefinitions.push(_loc3_);
               if(!_loc6_)
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
         if(_loc7_ || Boolean(param1))
         {
            this._libAvailableDefinitions[param1.libName] = _loc2_;
            if(!(_loc6_ && Boolean(param1)))
            {
               param1.pSWFExploInstance.removeEventListener(SWFExplorerEvent.COMPLETE,this.addDefinitions);
               if(!_loc6_)
               {
                  param1.pSWFExploInstance = null;
                  if(!_loc6_)
                  {
                     §§goto(addr00c8);
                  }
               }
               §§goto(addr00dc);
            }
         }
         addr00c8:
         dispatchEvent(new Event(param1.libName));
         if(_loc7_)
         {
            addr00dc:
            this.checkRequestedLibrariesForDispatch();
         }
      }
      
      public function classAllReadyLoaded(param1:String) : Boolean
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:int = 0;
         while(_loc2_ < this._availableDefinitions.length)
         {
            if(param1 == this._availableDefinitions[_loc2_])
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  §§push(true);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
                  addr0063:
                  return §§pop();
               }
            }
            else
            {
               _loc2_++;
               if(_loc4_)
               {
                  break;
               }
            }
         }
         §§goto(addr0063);
         §§push(false);
      }
      
      public function libAllReadyLoaded(param1:String) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(this._libAvailableDefinitions[param1] != null)
            {
               addr0035:
               §§push(true);
               if(_loc3_ && Boolean(this))
               {
               }
               addr0055:
               return §§pop();
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr0055);
               }
            }
            return §§pop();
         }
         §§goto(addr0035);
      }
      
      private function checkRequestedLibrariesForDispatch() : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(_loc9_ || _loc1_)
         {
            if(this.isEmptyDictionary(this._requestedLibPerNotificationID))
            {
               if(_loc9_)
               {
                  §§goto(addr003d);
               }
            }
            var _loc1_:Array = [];
            var _loc2_:* = false;
            for(_loc3_ in this._requestedLibPerNotificationID)
            {
               if(_loc9_ || Boolean(_loc1_))
               {
                  §§push(true);
                  if(!_loc10_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc10_)
                     {
                        var _loc7_:int = 0;
                        if(_loc9_)
                        {
                           var _loc8_:* = this._requestedLibPerNotificationID[_loc3_];
                           if(_loc9_)
                           {
                              for each(_loc4_ in _loc8_)
                              {
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                              }
                              addr00d5:
                              if(!(_loc10_ && Boolean(_loc3_)))
                              {
                                 addr00e6:
                                 addr00e5:
                                 if(_loc2_)
                                 {
                                    if(!(_loc10_ && Boolean(_loc1_)))
                                    {
                                       addr00f8:
                                       dispatchEvent(new Event(_loc3_));
                                       if(!(_loc9_ || Boolean(_loc3_)))
                                       {
                                          continue;
                                       }
                                    }
                                    addr011e:
                                    _loc1_.push(_loc3_);
                                 }
                                 continue;
                              }
                              §§goto(addr00f8);
                              addr00cc:
                              addr00d3:
                           }
                           while(true)
                           {
                              if(!this._libAvailableDefinitions.hasOwnProperty(_loc4_))
                              {
                                 if(_loc9_)
                                 {
                                    _loc2_ = false;
                                 }
                                 break;
                              }
                              §§goto(addr00cc);
                           }
                           §§goto(addr00d3);
                        }
                        §§goto(addr00d5);
                     }
                     §§goto(addr011e);
                  }
                  §§goto(addr00e6);
               }
               §§goto(addr00e5);
            }
            if(!(_loc10_ && _loc2_))
            {
               this.deleteKeysOfDict(this._requestedLibPerNotificationID,_loc1_);
            }
            return;
         }
         addr003d:
      }
      
      public function loadAll() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for(_loc2_ in this._knownUnloadedFiles)
         {
            if(!(_loc5_ && Boolean(_loc1_)))
            {
               this.addSWFtoLoad(_loc2_,this._knownUnloadedFiles[_loc2_]);
               if(_loc5_ && Boolean(_loc1_))
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_);
         }
         if(_loc6_)
         {
            this.deleteKeysOfDict(this._knownUnloadedFiles,_loc1_);
         }
      }
      
      private function queueMissingLibs(param1:Array) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         do
         {
            if(_loc3_ >= param1.length)
            {
               if(_loc5_ && Boolean(_loc2_))
               {
                  break;
               }
            }
            else
            {
               _loc4_ = param1[_loc3_];
               if(!(_loc6_ || Boolean(this)))
               {
                  continue;
               }
               if(!this._knownUnloadedFiles.hasOwnProperty(_loc4_))
               {
                  continue;
               }
               if(_loc6_)
               {
                  this.addSWFtoLoad(_loc4_,this._knownUnloadedFiles[_loc4_]);
                  if(_loc5_ && Boolean(this))
                  {
                     continue;
                  }
                  _loc2_.push(_loc4_);
                  if(_loc6_)
                  {
                     continue;
                  }
               }
            }
            this.deleteKeysOfDict(this._knownUnloadedFiles,_loc2_);
            break;
         }
         while(_loc3_++, !_loc5_);
         
      }
      
      private function getCachedBmpMC(param1:String) : MovieClip
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Class = null;
         var _loc3_:MovieClip = null;
         if(_loc4_)
         {
            if(this._bmpDataMovieCache)
            {
               if(_loc4_)
               {
                  if(this._bmpDataMovieCache[param1])
                  {
                     if(_loc4_)
                     {
                        §§goto(addr0046);
                     }
                     else
                     {
                        addr0077:
                        _loc2_ = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
                        _loc3_ = new _loc2_();
                        if(_loc4_ || Boolean(_loc3_))
                        {
                           this._bmpDataMovieCache[param1] = _loc3_;
                           if(!(_loc5_ && Boolean(param1)))
                           {
                              return _loc3_;
                           }
                        }
                     }
                  }
                  else
                  {
                     addr0067:
                     if(ApplicationDomain.currentDomain.hasDefinition(param1))
                     {
                        §§goto(addr0077);
                     }
                  }
                  return new MovieClip();
               }
               addr0046:
               return this._bmpDataMovieCache[param1];
            }
         }
         §§goto(addr0067);
      }
      
      private function deleteKeysOfDict(param1:Dictionary, param2:Array) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            delete param1[param2[_loc3_]];
            if(!_loc4_)
            {
               _loc3_++;
               if(!_loc5_)
               {
                  break;
               }
            }
         }
      }
      
      private function isEmptyDictionary(param1:Dictionary) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = param1;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc2_ != null)
               {
                  if(_loc5_ || Boolean(_loc3_))
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      public function set optionSmoothing(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._optionSmoothing = param1;
         }
      }
      
      public function get isReady() : Boolean
      {
         return this._isReady;
      }
      
      public function set isReady(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._isReady = param1;
            if(_loc2_)
            {
               addr0029:
               dispatchEvent(new Event(Event.INIT));
            }
            return;
         }
         §§goto(addr0029);
      }
   }
}

