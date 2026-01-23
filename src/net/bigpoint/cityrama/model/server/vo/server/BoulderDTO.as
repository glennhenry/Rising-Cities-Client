package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   
   public class BoulderDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _posX:Number;
      
      private var _posY:Number;
      
      private var _created:Number;
      
      private var _currentOutput:Vector.<ConfigOutputDTO>;
      
      private var _activePhases:Vector.<PhaseDTO>;
      
      public function BoulderDTO(param1:Object, param2:ConfigPlayfieldItemDTO)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            super();
            if(!(_loc7_ && Boolean(_loc3_)))
            {
               this._id = param1.id;
               if(!_loc7_)
               {
                  addr0045:
                  this._configId = param1.c;
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     this._posX = param1.px;
                     if(!(_loc7_ && Boolean(param1)))
                     {
                        this._posY = param1.py;
                        if(!_loc7_)
                        {
                           this._created = param1.cr;
                           if(!_loc7_)
                           {
                              addr0091:
                              this._currentOutput = new Vector.<ConfigOutputDTO>();
                              if(!(_loc7_ && Boolean(param2)))
                              {
                                 §§goto(addr00ad);
                              }
                              §§goto(addr00b7);
                           }
                           §§goto(addr00ad);
                        }
                     }
                     §§goto(addr00b7);
                  }
                  §§goto(addr0091);
               }
               addr00ad:
               if(param1.o != null)
               {
                  addr00b7:
                  var _loc5_:int = 0;
                  var _loc6_:* = param1.o;
                  while(true)
                  {
                     §§push(§§hasnext(_loc6_,_loc5_));
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           _loc3_ = §§nextvalue(_loc5_,_loc6_);
                           if(!(_loc7_ && Boolean(this)))
                           {
                              this._currentOutput.push(new ConfigOutputDTO(_loc3_));
                           }
                           continue;
                        }
                        if(_loc8_ || Boolean(param1))
                        {
                           if(_loc8_)
                           {
                              if(!_loc7_)
                              {
                                 §§goto(addr0124);
                              }
                              §§goto(addr0139);
                           }
                           §§goto(addr0163);
                        }
                        §§goto(addr01a9);
                     }
                     §§goto(addr01a5);
                  }
               }
               addr0124:
               this._activePhases = new Vector.<PhaseDTO>();
               if(_loc8_)
               {
                  addr0139:
                  if(param1.ph != null)
                  {
                     if(!(_loc7_ && Boolean(_loc3_)))
                     {
                        _loc5_ = 0;
                        if(_loc8_ || Boolean(param2))
                        {
                           addr0163:
                           _loc6_ = param1.ph;
                           loop2:
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              addr01a5:
                              while(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                 if(!(_loc7_ && Boolean(_loc3_)))
                                 {
                                    this._activePhases.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc4_,param2));
                                 }
                                 continue loop2;
                              }
                              addr01a9:
                           }
                        }
                     }
                  }
               }
               return;
            }
            §§goto(addr0091);
         }
         §§goto(addr0045);
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._id = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._configId = param1;
         }
      }
      
      public function get posX() : Number
      {
         return this._posX;
      }
      
      public function set posX(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._posX = param1;
         }
      }
      
      public function get posY() : Number
      {
         return this._posY;
      }
      
      public function set posY(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._posY = param1;
         }
      }
      
      public function get created() : Number
      {
         return this._created;
      }
      
      public function set created(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            this._created = param1;
         }
      }
      
      public function get currentOutput() : Vector.<ConfigOutputDTO>
      {
         return this._currentOutput;
      }
      
      public function set currentOutput(param1:Vector.<ConfigOutputDTO>) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._currentOutput = param1;
         }
      }
      
      public function get activePhases() : Vector.<PhaseDTO>
      {
         return this._activePhases;
      }
      
      public function set activePhases(param1:Vector.<PhaseDTO>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._activePhases = param1;
         }
      }
   }
}

