package net.bigpoint.cityrama.model.featureScreens.vo
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   
   public class BigFeatureScreenVO
   {
      
      private var _texts:Vector.<String>;
      
      private var _popuptitle:String;
      
      private var _titles:Vector.<String>;
      
      private var _dynaLibName:String;
      
      private var _dynaMCName:String;
      
      private var _popupflavour:String;
      
      private var _layerStyleName:String = "";
      
      public function BigFeatureScreenVO()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get texts() : Vector.<String>
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.validate();
         }
         return this._texts;
      }
      
      private function validate() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._texts == null);
            if(!(_loc1_ && _loc1_))
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || _loc1_)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(this._dynaLibName);
                           if(!_loc1_)
                           {
                              §§push(null);
                              if(!(_loc1_ && _loc1_))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc2_)
                                 {
                                    addr0063:
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    §§push(_temp_6);
                                    if(!(_loc1_ && Boolean(this)))
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc1_ && Boolean(this)))
                                          {
                                             §§pop();
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(this._dynaMCName);
                                                if(_loc2_)
                                                {
                                                   §§push(null);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!_loc1_)
                                                      {
                                                         addr00a5:
                                                         var _temp_10:* = §§pop();
                                                         §§push(_temp_10);
                                                         §§push(_temp_10);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            addr00b3:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  addr00c4:
                                                                  §§pop();
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr00ca:
                                                                     §§push(this._popuptitle);
                                                                     if(!(_loc1_ && _loc1_))
                                                                     {
                                                                        §§push(null);
                                                                        if(_loc2_)
                                                                        {
                                                                           addr00e1:
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!(_loc1_ && _loc1_))
                                                                           {
                                                                              addr00f9:
                                                                              var _temp_15:* = §§pop();
                                                                              addr00fa:
                                                                              §§push(_temp_15);
                                                                              if(!_temp_15)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr0103:
                                                                                    §§pop();
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr0117);
                                                                                    }
                                                                                    §§goto(addr0120);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr0117:
                                                                           §§goto(addr0116);
                                                                        }
                                                                        addr0116:
                                                                     }
                                                                     §§goto(addr0115);
                                                                  }
                                                                  §§goto(addr0120);
                                                               }
                                                               §§goto(addr0117);
                                                            }
                                                            §§goto(addr00f9);
                                                         }
                                                         §§goto(addr00fa);
                                                      }
                                                      §§goto(addr0117);
                                                   }
                                                   §§goto(addr00e1);
                                                }
                                                addr0115:
                                                §§goto(addr0111);
                                             }
                                             addr0111:
                                             if(this._popupflavour == null)
                                             {
                                                if(_loc2_)
                                                {
                                                   addr0120:
                                                   §§push(§§findproperty(RamaCityError));
                                                   §§push("Invalid Object please set it all! ");
                                                   if(!(_loc1_ && Boolean(this)))
                                                   {
                                                      §§push(§§pop() + this._texts);
                                                      if(_loc2_ || Boolean(this))
                                                      {
                                                         §§push(" ");
                                                         if(!(_loc1_ && Boolean(this)))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               §§push(this._dynaLibName);
                                                               if(!(_loc1_ && Boolean(this)))
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(" ");
                                                                     if(_loc2_)
                                                                     {
                                                                        addr0183:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(this._dynaMCName);
                                                                           if(_loc2_ || Boolean(this))
                                                                           {
                                                                              addr019a:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc1_)
                                                                              {
                                                                                 addr01a0:
                                                                                 §§push(" ");
                                                                                 if(!(_loc1_ && Boolean(this)))
                                                                                 {
                                                                                    addr01b0:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       addr01b6:
                                                                                       §§push(this._popuptitle);
                                                                                       if(_loc2_ || _loc1_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc2_ || Boolean(this))
                                                                                          {
                                                                                             addr01df:
                                                                                             addr01e2:
                                                                                             §§push(§§pop() + " ");
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                addr01f4:
                                                                                                addr01f0:
                                                                                                §§push(§§pop() + this._popupflavour);
                                                                                             }
                                                                                          }
                                                                                          throw new §§pop().RamaCityError(§§pop());
                                                                                       }
                                                                                       §§goto(addr01f4);
                                                                                    }
                                                                                    §§goto(addr01df);
                                                                                 }
                                                                                 §§goto(addr01e2);
                                                                              }
                                                                              §§goto(addr01b6);
                                                                           }
                                                                           §§goto(addr01f4);
                                                                        }
                                                                        §§goto(addr01f0);
                                                                     }
                                                                     §§goto(addr01b0);
                                                                  }
                                                                  §§goto(addr01a0);
                                                               }
                                                               §§goto(addr019a);
                                                            }
                                                            §§goto(addr01f0);
                                                         }
                                                         §§goto(addr0183);
                                                      }
                                                      §§goto(addr01b6);
                                                   }
                                                   §§goto(addr01f0);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr00c4);
                                       }
                                       §§goto(addr00a5);
                                    }
                                    §§goto(addr00b3);
                                 }
                                 §§goto(addr0103);
                              }
                              §§goto(addr00e1);
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr0120);
                     }
                     §§goto(addr00c4);
                  }
                  §§goto(addr0063);
               }
               §§goto(addr00b3);
            }
            §§goto(addr0103);
         }
         §§goto(addr00ca);
      }
      
      public function get titles() : Vector.<String>
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            if(this._titles == null)
            {
               if(!_loc1_)
               {
                  addr0024:
                  this._titles = new Vector.<String>();
               }
            }
            return this._titles;
         }
         §§goto(addr0024);
      }
      
      public function set titles(param1:Vector.<String>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._titles = param1;
         }
      }
      
      public function set texts(param1:Vector.<String>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._texts = param1;
         }
      }
      
      public function get dynaLibName() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.validate();
         }
         return this._dynaLibName;
      }
      
      public function get dynaMCName() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.validate();
         }
         return this._dynaMCName;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._dynaLibName = param1;
         }
      }
      
      public function set dynaMCName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._dynaMCName = param1;
         }
      }
      
      public function get popuptitle() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || Boolean(this))
         {
            this.validate();
         }
         return this._popuptitle;
      }
      
      public function set popuptitle(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._popuptitle = param1;
         }
      }
      
      public function get popupflavour() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this.validate();
         }
         return this._popupflavour;
      }
      
      public function set popupflavour(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._popupflavour = param1;
         }
      }
      
      public function get layerStyleName() : String
      {
         return this._layerStyleName;
      }
      
      public function set layerStyleName(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._layerStyleName = param1;
         }
      }
   }
}

