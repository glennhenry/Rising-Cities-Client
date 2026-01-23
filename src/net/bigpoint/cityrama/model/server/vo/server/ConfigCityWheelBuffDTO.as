package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   
   public class ConfigCityWheelBuffDTO
   {
      
      private var _id:Number;
      
      private var _gfxId:Number;
      
      private var _localeId:String;
      
      private var _specialOutput:ConfigOutputDTO;
      
      public function ConfigCityWheelBuffDTO(param1:Object)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            super();
            if(_loc3_)
            {
               this._id = param1.i;
               if(_loc3_)
               {
                  addr003b:
                  this._gfxId = param1.g;
                  if(_loc3_)
                  {
                     §§goto(addr0054);
                  }
                  §§goto(addr0079);
               }
               addr0054:
               this._localeId = param1.l;
               if(!_loc2_)
               {
                  if(param1.o)
                  {
                     if(_loc3_ || Boolean(this))
                     {
                        addr0079:
                        this._specialOutput = new ConfigOutputDTO(param1.o);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr003b);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
      
      public function get specialOutput() : ConfigOutputDTO
      {
         return this._specialOutput;
      }
      
      public function get isMultiplier() : Boolean
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this._specialOutput);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr0030:
                     §§push(this._specialOutput);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(§§pop().type);
                        if(!(_loc1_ && Boolean(this)))
                        {
                           §§push(ServerOutputConstants.TAG);
                           if(_loc2_ || _loc1_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§push(this._specialOutput);
                                    if(!_loc1_)
                                    {
                                       addr007f:
                                       §§push(§§pop().tagConfig);
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                addr00a9:
                                                addr00a6:
                                                addr00b1:
                                                addr00ac:
                                                addr00a2:
                                                if(this._specialOutput.tagConfig.tagName == ServerTagConstants.WHEEL_BUFF_MULTI)
                                                {
                                                   if(_loc2_ || Boolean(this))
                                                   {
                                                      §§push(true);
                                                      if(!_loc1_)
                                                      {
                                                         return §§pop();
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr00c9:
                                                      return false;
                                                   }
                                                   return §§pop();
                                                }
                                             }
                                          }
                                          §§goto(addr00c9);
                                       }
                                       §§goto(addr00a9);
                                    }
                                    §§goto(addr00a6);
                                 }
                              }
                              §§goto(addr00c9);
                           }
                           §§goto(addr00b1);
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr00a6);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr00c9);
            }
            §§goto(addr007f);
         }
         §§goto(addr0030);
      }
      
      public function get multiplier() : uint
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            if(this.isMultiplier)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr002b);
               }
            }
            return 1;
         }
         addr002b:
         return this._specialOutput.outputAmount;
      }
      
      public function get isJackpot() : Boolean
      {
         return this._gfxId == 14;
      }
   }
}

