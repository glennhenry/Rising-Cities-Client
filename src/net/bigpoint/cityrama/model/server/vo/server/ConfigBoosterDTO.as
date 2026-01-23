package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigBoosterDTO
   {
      
      private var _id:Number;
      
      private var _gfxId:Number;
      
      private var _locaId:Number;
      
      private var _tags:Vector.<String>;
      
      private var _priceConfigs:Vector.<ConfigOutputDTO>;
      
      public function ConfigBoosterDTO(param1:Object)
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(!_loc7_)
         {
            super();
            if(_loc6_)
            {
               addr0028:
               this._id = Number(param1.cid);
               if(_loc6_ || Boolean(_loc3_))
               {
                  addr0045:
                  this._gfxId = Number(param1.gfx);
                  if(_loc6_ || Boolean(_loc2_))
                  {
                     this._locaId = Number(param1.lid);
                     if(!_loc7_)
                     {
                        addr0077:
                        this._tags = new Vector.<String>();
                     }
                     addr0085:
                     var _loc4_:int = 0;
                     var _loc5_:* = param1.tag;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc5_,_loc4_));
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(§§pop())
                        {
                           _loc2_ = §§nextvalue(_loc4_,_loc5_);
                           if(!_loc7_)
                           {
                              this._tags.push(_loc2_);
                           }
                           continue;
                        }
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              if(!_loc7_)
                              {
                                 this._priceConfigs = new Vector.<ConfigOutputDTO>();
                                 if(!_loc7_)
                                 {
                                    _loc4_ = 0;
                                    if(!(_loc7_ && Boolean(_loc3_)))
                                    {
                                       _loc5_ = param1.cst;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc5_,_loc4_));
                                          break loop0;
                                       }
                                       addr0155:
                                       addr014e:
                                    }
                                    addr0157:
                                 }
                              }
                              return;
                           }
                           §§goto(addr0157);
                        }
                        §§goto(addr0155);
                     }
                     while(§§pop())
                     {
                        _loc3_ = §§nextvalue(_loc4_,_loc5_);
                        if(!(_loc7_ && Boolean(_loc3_)))
                        {
                           this._priceConfigs.push(new ConfigOutputDTO(_loc3_));
                        }
                        §§goto(addr014e);
                     }
                     §§goto(addr0155);
                  }
                  §§goto(addr0077);
               }
               §§goto(addr0085);
            }
            §§goto(addr0045);
         }
         §§goto(addr0028);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get gfxId() : Number
      {
         return this._gfxId;
      }
      
      public function get locaId() : Number
      {
         return this._locaId;
      }
      
      public function get priceConfigs() : Vector.<ConfigOutputDTO>
      {
         return this._priceConfigs;
      }
      
      public function get tags() : Vector.<String>
      {
         return this._tags;
      }
      
      public function set tags(param1:Vector.<String>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._tags = param1;
         }
      }
   }
}

