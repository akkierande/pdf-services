//
//  TestJoints.m
//  bridge
//
//  Created by sandeep m on 20/03/2011.
//  Copyright 2011 bri. All rights reserved.
//

#import "TestJoints.h"


@implementation TestJoints


-(void)testJoint{
	b2Body* ground = NULL;
	int e_count =5;
	
	{
		b2BodyDef bd;
		ground = world->CreateBody(&bd);
		
	}
	
	{
		b2PolygonShape shape;
		shape.SetAsBox(0.5f, 0.125f);
		
		b2FixtureDef fd;
		fd.shape = &shape;
		fd.density = 20.0f;
		
		b2WeldJointDef jd;
		
		b2Body* prevBody = ground;
		for (int32 i = 0; i < e_count; ++i)
		{
			b2BodyDef bd;
			bd.type = b2_dynamicBody;
			bd.position.Set(-14.5f + 1.0f * i, 5.0f);
			b2Body* body = world->CreateBody(&bd);
			body->CreateFixture(&fd);
			
			b2Vec2 anchor(-15.0f + 1.0f * i, 5.0f);
			jd.Initialize(prevBody, body, anchor);
			world->CreateJoint(&jd);
			
			prevBody = body;
		}
	}
	
	{
		b2PolygonShape shape;
		shape.SetAsBox(0.5f, 0.125f);
		
		b2FixtureDef fd;
		fd.shape = &shape;
		fd.density = 20.0f;
		
		b2WeldJointDef jd;
		
		b2Body* prevBody = ground;
		for (int32 i = 0; i < e_count; ++i)
		{
			b2BodyDef bd;
			bd.type = b2_dynamicBody;
			bd.position.Set(-14.5f + 1.0f * i, 15.0f);
			bd.inertiaScale = 10.0f;
			b2Body* body = world->CreateBody(&bd);
			body->CreateFixture(&fd);
			
			b2Vec2 anchor(-15.0f + 1.0f * i, 15.0f);
			jd.Initialize(prevBody, body, anchor);
			world->CreateJoint(&jd);
			
			prevBody = body;
		}
	}
	
	{
		b2PolygonShape shape;
		shape.SetAsBox(0.5f, 0.125f);
		
		b2FixtureDef fd;
		fd.shape = &shape;
		fd.density = 20.0f;
		
		b2WeldJointDef jd;
		
		b2Body* prevBody = ground;
		for (int32 i = 0; i < e_count; ++i)
		{
			b2BodyDef bd;
			bd.type = b2_dynamicBody;
			bd.position.Set(-4.5f + 1.0f * i, 5.0f);
			b2Body* body = world->CreateBody(&bd);
			body->CreateFixture(&fd);
			
			if (i > 0)
			{
				b2Vec2 anchor(-5.0f + 1.0f * i, 5.0f);
				jd.Initialize(prevBody, body, anchor);
				world->CreateJoint(&jd);
			}
			
			prevBody = body;
		}
	}
	
	{
		b2PolygonShape shape;
		shape.SetAsBox(0.5f, 0.125f);
		
		b2FixtureDef fd;
		fd.shape = &shape;
		fd.density = 20.0f;
		
		b2WeldJointDef jd;
		
		b2Body* prevBody = ground;
		for (int32 i = 0; i < e_count; ++i)
		{
			b2BodyDef bd;
			bd.type = b2_dynamicBody;
			bd.position.Set(5.5f + 1.0f * i, 10.0f);
			bd.inertiaScale = 10.0f;
			b2Body* body = world->CreateBody(&bd);
			body->CreateFixture(&fd);
			
			if (i > 0)
			{
				b2Vec2 anchor(5.0f + 1.0f * i, 10.0f);
				jd.Initialize(prevBody, body, anchor);
				world->CreateJoint(&jd);
			}
			
			prevBody = body;
		}
	}
	
	for (int32 i = 0; i < 2; ++i)
	{
		b2Vec2 vertices[3];
		vertices[0].Set(-0.5f, 0.0f);
		vertices[1].Set(0.5f, 0.0f);
		vertices[2].Set(0.0f, 1.5f);
		
		b2PolygonShape shape;
		shape.Set(vertices, 3);
		
		b2FixtureDef fd;
		fd.shape = &shape;
		fd.density = 1.0f;
		
		b2BodyDef bd;
		bd.type = b2_dynamicBody;
		bd.position.Set(-8.0f + 8.0f * i, 12.0f);
		b2Body* body = world->CreateBody(&bd);
		body->CreateFixture(&fd);
	}
	
	for (int32 i = 0; i < 2; ++i)
	{
		b2CircleShape shape;
		shape.m_radius = 0.5f;
		
		b2FixtureDef fd;
		fd.shape = &shape;
		fd.density = 1.0f;
		
		b2BodyDef bd;
		bd.type = b2_dynamicBody;
		bd.position.Set(-6.0f + 6.0f * i, 10.0f);
		b2Body* body = world->CreateBody(&bd);
		body->CreateFixture(&fd);
	}
}
@end
