package net.bigpoint.util
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   
   public class RisingBitmap extends Bitmap
   {
      
      private var _preloader:ImagePreloaderSmall;
      
      private var _libName:String;
      
      private var _assetName:String;
      
      private var _frameName:String;
      
      private var _centerWidth:Boolean = false;
      
      private var _centerHeight:Boolean = false;
      
      public function RisingBitmap(param1:String, param2:String, param3:String = null, param4:Boolean = false, param5:Boolean = false)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            super();
            if(_loc6_ || Boolean(this))
            {
               this._assetName = param2;
               if(_loc6_)
               {
                  this._libName = param1;
                  if(_loc6_)
                  {
                     this._frameName = param3;
                     if(_loc6_)
                     {
                        this._centerWidth = param4;
                        if(_loc6_ || Boolean(this))
                        {
                           addr007d:
                           this._centerHeight = param5;
                           if(!_loc7_)
                           {
                              addr0089:
                              this.init();
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr0089);
               }
               §§goto(addr007d);
            }
         }
         §§goto(addr0089);
      }
      
      private function init(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:DisplayObject = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc2_:FileRuntimeLoadServiceDynamic = FileRuntimeLoadServiceDynamic.getInstance();
         if(!_loc6_)
         {
            if(!_loc2_.libAllReadyLoaded(this._libName))
            {
               if(_loc7_)
               {
                  _loc2_.addEventListener(this._assetName,this.init);
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     _loc2_.checkSWFArrayLoaded([this._libName],this._assetName);
                     if(_loc7_ || Boolean(param1))
                     {
                        this._preloader = new ImagePreloaderSmall();
                        if(!_loc6_)
                        {
                           §§push(this._preloader);
                           if(_loc7_ || Boolean(_loc2_))
                           {
                              _loc3_ = §§pop() as DisplayObject;
                              _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                              _loc4_.lock();
                              if(_loc7_)
                              {
                                 _loc4_.draw(_loc3_);
                                 if(_loc7_ || Boolean(param1))
                                 {
                                    _loc4_.unlock();
                                    if(_loc7_ || Boolean(param1))
                                    {
                                       addr00f1:
                                       §§push(this._centerWidth);
                                       if(_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr0105:
                                                §§push(this);
                                                §§push(-_loc4_.width);
                                                if(_loc7_ || Boolean(this))
                                                {
                                                   §§push(§§pop() / 2);
                                                }
                                                §§pop().x = §§pop();
                                                if(_loc7_ || Boolean(_loc3_))
                                                {
                                                   addr012c:
                                                   addr0130:
                                                   if(this._centerHeight)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(this);
                                                         §§push(-_loc4_.height);
                                                         if(!(_loc6_ && Boolean(this)))
                                                         {
                                                            §§push(§§pop() / 2);
                                                         }
                                                         §§pop().y = §§pop();
                                                         addr0153:
                                                         this.bitmapData = _loc4_;
                                                      }
                                                      §§goto(addr0159);
                                                   }
                                                }
                                                §§goto(addr0153);
                                             }
                                          }
                                          §§goto(addr012c);
                                       }
                                       §§goto(addr0130);
                                    }
                                    addr0159:
                                    return;
                                 }
                                 §§goto(addr0105);
                              }
                              §§goto(addr00f1);
                           }
                           else
                           {
                              addr016e:
                              if(§§pop() != null)
                              {
                                 if(!(_loc6_ && Boolean(_loc3_)))
                                 {
                                    §§goto(addr0181);
                                 }
                                 §§goto(addr01ae);
                              }
                              §§goto(addr0194);
                           }
                        }
                        addr0181:
                        this._preloader = null;
                        if(!(_loc6_ && Boolean(_loc2_)))
                        {
                           addr0194:
                           _loc2_.removeEventListener(this._assetName,this.init);
                           if(!_loc6_)
                           {
                              §§goto(addr01a6);
                           }
                           §§goto(addr01ae);
                        }
                        §§goto(addr01a6);
                     }
                     §§goto(addr0194);
                  }
                  addr01a6:
                  if(this._frameName)
                  {
                     addr01ae:
                     _loc5_ = _loc2_.getBitmap(this._assetName,this._frameName,true,true);
                     _loc3_ = _loc5_ as DisplayObject;
                     _loc4_ = new BitmapData(_loc3_.width,_loc3_.height,true,0);
                     _loc4_.lock();
                     if(!_loc6_)
                     {
                        _loc4_.draw(_loc3_);
                        if(_loc7_)
                        {
                           addr01f6:
                           _loc4_.unlock();
                           if(_loc7_)
                           {
                              §§push(this._centerWidth);
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc6_ && Boolean(_loc2_)))
                                    {
                                       §§push(this);
                                       §§push(-_loc4_.width);
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          §§push(§§pop() / 2);
                                       }
                                       §§pop().x = §§pop();
                                       if(!_loc6_)
                                       {
                                          addr023d:
                                          addr0241:
                                          if(this._centerHeight)
                                          {
                                             if(_loc7_ || Boolean(param1))
                                             {
                                                addr0253:
                                                §§push(this);
                                                §§push(-_loc4_.height);
                                                if(_loc7_ || Boolean(_loc2_))
                                                {
                                                   §§push(§§pop() / 2);
                                                }
                                                §§pop().y = §§pop();
                                                if(!(_loc6_ && Boolean(this)))
                                                {
                                                   addr027a:
                                                   this.bitmapData = _loc4_;
                                                   if(_loc7_ || Boolean(_loc3_))
                                                   {
                                                      §§push(this);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(OptionsGlobalVariables.getInstance().highQuality);
                                                         if(!_loc6_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr02a8:
                                                               §§push(false);
                                                               if(_loc7_ || Boolean(param1))
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(true);
                                                            }
                                                         }
                                                         §§pop().smoothing = §§pop();
                                                         if(!(_loc6_ && Boolean(param1)))
                                                         {
                                                            addr02d9:
                                                            dispatchEvent(new Event(Event.COMPLETE));
                                                         }
                                                         §§goto(addr02e8);
                                                      }
                                                      §§goto(addr02a8);
                                                   }
                                                   §§goto(addr02d9);
                                                }
                                                §§goto(addr02e8);
                                             }
                                             §§goto(addr02d9);
                                          }
                                          §§goto(addr027a);
                                       }
                                       §§goto(addr02e8);
                                    }
                                    §§goto(addr0253);
                                 }
                                 §§goto(addr023d);
                              }
                              §§goto(addr0241);
                           }
                           §§goto(addr0253);
                        }
                        §§goto(addr02e8);
                     }
                     §§goto(addr01f6);
                  }
                  addr02e8:
                  return;
               }
               §§goto(addr0194);
            }
            else
            {
               §§push(this._preloader);
            }
            §§goto(addr016e);
         }
         §§goto(addr0181);
      }
   }
}

